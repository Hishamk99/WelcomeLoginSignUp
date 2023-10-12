import 'package:flutter/material.dart';
import 'package:login_signup_project/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key ,this.suffixIcon , required this.hint, required this.preIcon , this.obscureText = false});
  final String hint;
  final bool obscureText;
  final Icon preIcon;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: kPrimaryLightColor,
        ),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            suffixIcon: suffixIcon,
            prefixIcon: preIcon
          ),
        ),
      ),
    );
  }
}
