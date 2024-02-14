import 'package:flutter/material.dart';

import '../services/sizer.dart';
import '../themes.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      color: AppColors().cardColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizer().screenWidth(context) * 0.05,
          vertical: Sizer().screenWidth(context) * 0.06,
        ),
        child: child,
      ),
    );
  }
}
