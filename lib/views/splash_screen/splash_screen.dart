import 'package:fiverr_three/services/sizer.dart';
import 'package:fiverr_three/themes.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
