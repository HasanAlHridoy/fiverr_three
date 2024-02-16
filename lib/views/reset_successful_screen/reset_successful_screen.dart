import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/credential_page_custom_top_section.dart';
import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_card.dart';
import '../../services/sizer.dart';
import '../../themes.dart';

class ResetSuccessfulScreen extends StatelessWidget {
  const ResetSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().bgColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizer().screenWidth(context) * 0.03, vertical: Sizer().screenHeight(context) * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Sizer().screenHeight(context) * 0.015),
                const Center(child: CredentialPageCustomTopSection()),
                SizedBox(height: Sizer().screenHeight(context) * 0.015),
                SizedBox(
                  height: Sizer().screenHeight(context) * 0.8,
                  child: CustomCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: SizedBox.shrink(),
                        ),
                        Expanded(
                          flex: 3,
                          child: SvgPicture.asset(
                            'assets/images/success.svg',
                            height: Sizer().screenHeight(context) * 0.12,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Text(
                                'Reset Successful',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors().textTitleColor,
                                ),
                              ),
                              Text(
                                'You can now log in to your account ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors().textSubtitleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          bgColor: AppColors().inactiveButtonColor,
                          title: 'Login In',
                          hasBorder: true,
                          titleColor: AppColors().textTitleColor,
                          onTap: () {},
                        ),
                        const Expanded(
                          flex: 2,
                          child: SizedBox.shrink(),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
