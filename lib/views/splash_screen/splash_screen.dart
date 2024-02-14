import 'package:fiverr_three/common_widgets/custom_card.dart';
import 'package:fiverr_three/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().bgColor,
        body: Center(
          child: CustomCard(
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
        ),
      ),
    );
  }
}
