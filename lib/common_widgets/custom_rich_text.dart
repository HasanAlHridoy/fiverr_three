import 'package:flutter/material.dart';

import '../themes.dart';

class CustomRichText extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomRichText({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors().textSubtitleColor),
          ),
          TextSpan(
            text: text2,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColors().richTextColor),
          ),
        ],
      ),
    );
  }
}
