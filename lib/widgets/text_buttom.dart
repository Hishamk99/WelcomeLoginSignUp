import 'package:flutter/material.dart';
import 'package:login_signup_project/constant.dart';

class TextButtom extends StatelessWidget {
  const TextButtom({super.key , required this.onTap , required this.txt , required this.txt1});
  final void Function()? onTap;
  final String txt;
  final String txt1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt , style: const TextStyle(color: kPrimary),),
        GestureDetector(
          onTap: onTap,
          child: Text(txt1 , style: const TextStyle(fontSize: 15 ,color: kPrimary),),
        ),
      ],
    );
  }
}
