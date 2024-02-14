import 'package:flutter/material.dart';

import '../services/sizer.dart';
import '../themes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors().buttonColor,
          fixedSize: Size(Sizer().screenWidth(context), 50),
          side: BorderSide(width: 0.5, color: AppColors().textSubtitleColor)),
      child: Text(
        'Continue',
        style: TextStyle(
          color: AppColors().bgColor,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
