import 'package:flutter/material.dart';

import '../services/sizer.dart';
import '../themes.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final bool hasBorder;
  final String title;
  final Color titleColor;
  final Function() onTap;

  const CustomButton({
    super.key,
    required this.bgColor,
    this.hasBorder = false,
    required this.title,
    required this.titleColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        elevation: 0,
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
