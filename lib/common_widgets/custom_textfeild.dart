import 'package:fiverr_three/services/sizer.dart';
import 'package:fiverr_three/themes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatefulWidget {
  bool isShowPassIcon;
  String lebelText;
  CustomTextFeild(
      {super.key, required this.isShowPassIcon, required this.lebelText});
  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFeildState createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool _isFocused = false;

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(children: [
        SizedBox(
          height: Sizer().screenHeight(context) * 0.25,
          width: Sizer().screenWidth(context) * 0.85,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: widget.isShowPassIcon
                  ? IconButton(
                      icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off,
                          color: AppColors().textTitleColor),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    )
                  : null,
              filled: true,
              fillColor: AppColors().inactiveButtonColor,
              hintText: widget.lebelText,
              hintStyle: TextStyle(color: AppColors().textTitleColor),
              border: _isFocused
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: AppColors().borderColor, width: 0.4),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
            ),
            onTap: () {
              setState(() {
                _isFocused = true;
              });
            },
            autofocus: false,
          ),
        ),
      ]),
    );
  }
}
