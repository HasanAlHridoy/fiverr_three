import 'package:fiverr_three/common_widgets/custom_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/credential_page_custom_top_section.dart';
import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_card.dart';
import '../../common_widgets/custom_page_title.dart';
import '../../services/sizer.dart';
import '../../themes.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isActiveButton = false;

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
                            'assets/images/email.svg',
                            height: Sizer().screenHeight(context) * 0.12,
                          ),
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.03),
                        const CustomPageTitle(
                          title: 'Check Email',
                          subTitle: 'We just sent an OTP to your registered email address',
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.05),
                        // CustomTextField(
                        //   controller: emailController,
                        //   passwordVisible: false,
                        //   isShowPassIcon: false,
                        //   labelText: 'Enter your email...',
                        //   onChanged: (value) {
                        //     if (value.isNotEmpty) {
                        //       isActiveButton = true;
                        //       setState(() {});
                        //     } else {
                        //       isActiveButton = false;
                        //       setState(() {});
                        //     }
                        //   },
                        // ),
                        const Spacer(),
                        CustomButton(
                          bgColor: isActiveButton == true ? AppColors().buttonColor : AppColors().inactiveButtonColor,
                          title: 'Verify OTP',
                          titleColor: isActiveButton == true ? AppColors().bgColor : AppColors().inactiveTextButtonColor,
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.02),
                        Align(
                          alignment: Alignment.center,
                          child: CustomRichText(
                            text1: 'Didn\'t get a code? ',
                            text2: 'Resend',
                            onTap: () {},
                          ),
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
