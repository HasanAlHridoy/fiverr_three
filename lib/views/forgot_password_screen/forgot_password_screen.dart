import 'package:fiverr_three/views/otp_screen/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/credential_page_custom_top_section.dart';
import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_card.dart';
import '../../common_widgets/custom_page_title.dart';
import '../../common_widgets/custom_rich_text.dart';
import '../../common_widgets/custom_textfeild.dart';
import '../../services/sizer.dart';
import '../../themes.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
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
                            'assets/images/forgot_password.svg',
                            height: Sizer().screenHeight(context) * 0.12,
                          ),
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.03),
                        const CustomPageTitle(
                          title: 'Forgot Password?',
                          subTitle: 'Don’t worry, it happens to the best of us...',
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.05),
                        Text(
                          'Email Address',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors().textTitleColor),
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.01),
                        CustomTextField(
                          controller: emailController,
                          passwordVisible: false,
                          isShowPassIcon: false,
                          labelText: 'Enter your email...',
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              isActiveButton = true;
                              setState(() {});
                            } else {
                              isActiveButton = false;
                              setState(() {});
                            }
                          },
                        ),
                        const Spacer(),
                        CustomButton(
                          bgColor: isActiveButton == true ? AppColors().buttonColor : AppColors().inactiveButtonColor,
                          title: 'Continue',
                          titleColor: isActiveButton == true ? AppColors().bgColor : AppColors().inactiveTextButtonColor,
                        ),
                        SizedBox(height: Sizer().screenHeight(context) * 0.02),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Try another way',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors().textSubtitleColor),
                            ),
                          ),
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
