import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.signIn,
      required this.color,
      this.onPressed,
       this.colorText = Colors.white});
  final String signIn;
  final Color color;
  final Color colorText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 99, vertical: 13)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          ),
        ),
      ),
      child: Text(
        signIn,
        style: TextStyle(color: colorText, fontSize: 16),
      ),
    );
  }
}
