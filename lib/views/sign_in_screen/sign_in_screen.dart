import 'package:fiverr_three/common_widgets/custom_button.dart';
import 'package:fiverr_three/common_widgets/custom_card.dart';
import 'package:fiverr_three/common_widgets/custom_page_title.dart';
import 'package:fiverr_three/common_widgets/custom_rich_text.dart';
import 'package:fiverr_three/common_widgets/custom_textfeild.dart';
import 'package:fiverr_three/themes.dart';
import 'package:fiverr_three/views/forgot_password_screen/forgot_password_screen.dart';
import 'package:fiverr_three/views/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/credential_page_custom_top_section.dart';
import '../../services/sizer.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                        const CustomPageTitle(
                          title: 'Welcome Back!',
                          subTitle: 'Let’s login to get started',
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.05),
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
                        SizedBox(height: Sizer().screenHeight(context) * 0.01),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forget password?',
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColors().textSubtitleColor),
                            ),
                          ),
                        ),
                        const Spacer(),
                        CustomButton(
                          bgColor: AppColors().buttonColor,
                          title: 'Sign in',
                          titleColor: AppColors().bgColor,
                          onTap: () {},
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.03),
                        Align(
                          alignment: Alignment.center,
                          child: CustomRichText(
                            text1: 'Don’t have account? ',
                            text2: 'Create now',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                            },
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
