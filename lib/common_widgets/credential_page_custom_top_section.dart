import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../services/sizer.dart';
import '../themes.dart';

class CredentialPageCustomTopSection extends StatelessWidget {
  const CredentialPageCustomTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizer().screenHeight(context) * 0.08,
      width: Sizer().screenWidth(context) * 0.20,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors().borderColor.withOpacity(0.2),
            blurRadius: 50,
          ),
        ],
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/u.svg',
            height: Sizer().screenHeight(context) * 0.05,
          ),
          Divider(
            color: AppColors().borderColor,
            height: 15,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          )
        ],
      ),
    );
  }
}
