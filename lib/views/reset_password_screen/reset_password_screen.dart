import 'package:fiverr_three/views/reset_successful_screen/reset_successful_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/credential_page_custom_top_section.dart';
import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_card.dart';
import '../../common_widgets/custom_page_title.dart';
import '../../common_widgets/custom_textfeild.dart';
import '../../services/sizer.dart';
import '../../themes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/reset_password.svg',
                            height: Sizer().screenHeight(context) * 0.12,
                          ),
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.03),
                        const CustomPageTitle(
                          title: 'Reset Password',
                          subTitle: 'Use a combination of Numbers, Uppercase, lowercase and Special characters',
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.05),
                        Text(
                          'Password',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors().textTitleColor),
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.01),
                        CustomTextField(
                          isShowPassIcon: true,
                          labelText: 'Enter your password...',
                          passwordVisible: true,
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.02),
                        Text(
                          'Confirm Password',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors().textTitleColor),
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.01),
                        CustomTextField(
                          isShowPassIcon: true,
                          labelText: 'Enter your password...',
                          passwordVisible: true,
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.02),
                        const Spacer(),
                        CustomButton(
                          bgColor: AppColors().buttonColor,
                          title: 'Reset Password',
                          titleColor: AppColors().bgColor,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetSuccessfulScreen()));
                          },
                        ),
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
