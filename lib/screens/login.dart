import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_project/constant.dart';
import 'package:login_signup_project/screens/wlcome.dart';
import 'package:login_signup_project/widgets/custom_buttom.dart';
import 'package:login_signup_project/widgets/custom_text_field.dart';
import 'package:login_signup_project/widgets/text_buttom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              ListView(children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Courgette-Regular',
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/login.svg',
                          width: 300,
                          height: 250,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextField(
                          hint: 'Email',
                          preIcon: Icon(Icons.person, color: kPrimary,),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextField(
                          hint: 'password',
                          suffixIcon: Icon(Icons.visibility , color: kPrimary,),
                          obscureText: true,
                          preIcon: Icon(Icons.lock , color: kPrimary,),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomButton(
                          signIn: 'LOGIN',
                          color: kPrimary,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButtom(
                          txt: 'Don\'t have an account ? ',
                          onTap: () {
                            Navigator.pushNamed(context, WelcomePage.signUp);
                          },
                          txt1: 'Sign Up',
                        ),
                      ]),
                ),
              ]),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 70,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
