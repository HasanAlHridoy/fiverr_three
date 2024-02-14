import 'package:flutter/material.dart';

import '../themes.dart';

class CustomPageTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const CustomPageTitle({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColors().textTitleColor,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: AppColors().textSubtitleColor,
          ),
        ),
      ],
    );
  }
}
