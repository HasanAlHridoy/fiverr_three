import 'package:fiverr_three/common_widgets/custom_rich_text.dart';
import 'package:fiverr_three/views/reset_password_screen/reset_password_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

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
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.white,
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 2, color: AppColors().textSubtitleColor),
      ),
    ),
  );

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
                      SizedBox(height: Sizer().screenHeight(context) * 0.1),
                      Align(
                        child: Pinput(
                          controller: pinController,
                          focusNode: focusNode,
                          length: 6,
                          androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          defaultPinTheme: defaultPinTheme,
                          validator: (value) {},
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            if (value.length == 6) {
                              isActiveButton = true;
                              setState(() {});
                            } else {
                              isActiveButton = false;
                              setState(() {});
                            }
                            debugPrint('onChanged: $value');
                          },
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              border: Border(
                                bottom: BorderSide(width: 3, color: AppColors().textTitleColor),
                              ),
                            ),
                          ),
                          submittedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              border: Border(
                                bottom: BorderSide(width: 3, color: AppColors().textTitleColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.04),
                      Align(
                        child: Text(
                          '00:34',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors().textSubtitleColor,
                          ),
                        ),
                      ),
                      SizedBox(height: Sizer().screenHeight(context) * 0.2),
                      CustomButton(
                        bgColor: isActiveButton == true ? AppColors().buttonColor : AppColors().inactiveButtonColor,
                        title: 'Verify OTP',
                        titleColor: isActiveButton == true ? AppColors().bgColor : AppColors().inactiveTextButtonColor,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                        },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
