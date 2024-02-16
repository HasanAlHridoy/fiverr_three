import 'package:fiverr_three/views/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/credential_page_custom_top_section.dart';
import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_card.dart';
import '../../common_widgets/custom_page_title.dart';
import '../../common_widgets/custom_rich_text.dart';
import '../../common_widgets/custom_textfeild.dart';
import '../../services/sizer.dart';
import '../../themes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                CustomCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomPageTitle(
                        title: 'Create an Account',
                        subTitle: 'Account creation process...',
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.05),
                      Text(
                        'Full Name',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors().textTitleColor),
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.01),
                      CustomTextField(
                        isShowPassIcon: false,
                        labelText: 'Enter your full name...',
                        passwordVisible: false,
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.02),
                      Text(
                        'Email Address',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors().textTitleColor),
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.01),
                      CustomTextField(
                        isShowPassIcon: false,
                        labelText: 'Enter your email...',
                        passwordVisible: false,
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.02),
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
                      Row(
                        children: [
                          Text(
                            'Referral Code',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors().textTitleColor),
                          ),
                          SizedBox(width: Sizer().screenWidth(context) * 0.01),
                          Text(
                            'Optional',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors().textSubtitleColor),
                          ),
                        ],
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.01),
                      CustomTextField(
                        isShowPassIcon: false,
                        labelText: 'Enter your referral code...',
                        passwordVisible: false,
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.05),
                      CustomButton(
                        bgColor: AppColors().buttonColor,
                        title: 'Sign up',
                        titleColor: AppColors().bgColor,
                        onTap: () {},
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: CustomRichText(
                          text1: 'Already have account? ',
                          text2: 'Login now',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                          },
                        ),
                      )
                    ],
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
