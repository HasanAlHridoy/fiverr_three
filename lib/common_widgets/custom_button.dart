import 'package:flutter/material.dart';

import '../services/sizer.dart';
import '../themes.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final bool hasBorder;
  final String title;
  final Color titleColor;

  const CustomButton({
    super.key,
    required this.bgColor,
    this.hasBorder = false,
    required this.title,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        fixedSize: Size(Sizer().screenWidth(context), 50),
        side: hasBorder == true ? BorderSide(width: 0.5, color: AppColors().borderColor) : BorderSide.none,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
