import 'package:fiverr_three/common_widgets/custom_card.dart';
import 'package:fiverr_three/themes.dart';
import 'package:fiverr_three/views/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common_widgets/custom_textfeild.dart';
import '../../services/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void delay() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().bgColor,
        body: Center(
          child: CustomCard(
            child: Container(
              height: Sizer().screenHeight(context) * 0.15,
              width: Sizer().screenWidth(context) * 0.40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors().borderColor.withOpacity(0.2),
                    blurRadius: 50,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/u.svg',
                  ),
                  Divider(
                    color: AppColors().borderColor,
                    height: 25,
                    thickness: 7,
                    indent: 50,
                    endIndent: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
