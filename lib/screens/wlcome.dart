import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_project/widgets/custom_buttom.dart';
import '../constant.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static String signUp = '/signUp';
  static String signIn = '/login';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Welcome to Edu',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Courgette-Regular',
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/chat.svg',
                    width: 280,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    signIn: 'Sign Up',
                    color: kPrimary,
                    onPressed: () {
                      Navigator.pushNamed(context, signUp);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    signIn: 'Sign In',
                    color: kPrimaryLightColor,
                    onPressed: () {
                      Navigator.pushNamed(context, signIn);
                    },
                  ),
                ],
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 70,
                )),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 70,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
