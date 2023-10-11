import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , required this.signIn , required this.color , required this.onPressed});
  final String signIn;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          ),
        ),
      ),
      child: Text(
        signIn,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
