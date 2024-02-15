import 'package:fiverr_three/services/sizer.dart';
import 'package:fiverr_three/themes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  bool isShowPassIcon;
  String labelText;
  bool passwordVisible = true;
  TextEditingController? controller;
  Function(String e)? onChanged;

  CustomTextField({super.key, required this.isShowPassIcon, required this.labelText, this.controller, this.onChanged, required this.passwordVisible});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizer().screenHeight(context) * 0.06,
      width: Sizer().screenWidth(context),
      child: TextField(
        controller: widget.controller,
        cursorColor: AppColors().textTitleColor,
        style: TextStyle(color: AppColors().textTitleColor),
        obscureText: widget.passwordVisible,
        decoration: InputDecoration(
          suffixIcon: widget.isShowPassIcon
              ? IconButton(
                  icon:
                      Icon(widget.passwordVisible == false ? Icons.visibility_outlined : Icons.visibility_off, color: AppColors().textSubtitleColor),
                  onPressed: () {
                    setState(() {
                      widget.passwordVisible = !widget.passwordVisible;
                    });
                  },
                )
              : null,
          filled: true,
          fillColor: AppColors().inactiveButtonColor,
          hintText: widget.labelText,
          hintStyle: TextStyle(color: AppColors().textSubtitleColor, fontWeight: FontWeight.w400, fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: _isFocused
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.white, width: 0.5),
                )
              : InputBorder.none,
        ),
        onTap: () {
          setState(() {
            _isFocused = true;
          });
        },
        onChanged: widget.onChanged,
        autofocus: false,
      ),
    );
  }
}
