import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_project/constant.dart';
import 'package:login_signup_project/widgets/custom_buttom.dart';
import 'package:login_signup_project/widgets/custom_text_field.dart';
import 'package:login_signup_project/widgets/text_buttom.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                            'SIGNUP',
                            style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Courgette-Regular',
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/signup.svg',
                          width: 300,
                          height: 200,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextField(
                          hint: 'Email',
                          preIcon: Icon(
                            Icons.person,
                            color: kPrimary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextField(
                          hint: 'password',
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: kPrimary,
                          ),
                          obscureText: true,
                          preIcon: Icon(
                            Icons.lock,
                            color: kPrimary,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomButton(
                          signIn: 'SIGNUP',
                          color: kPrimary,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButtom(
                          txt: 'I already have an account ? ',
                          onTap: () {
                            Navigator.pop(context);
                          },
                          txt1: 'Sign In',
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: kPrimary,
                                endIndent: 7,
                                indent: 20,
                              ),
                            ),
                            Text(
                              'OR',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: kPrimary),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                color: kPrimary,
                                endIndent: 20,
                                indent: 7,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/facebook.svg',
                                color: kPrimary,
                                
                              ),
                              SvgPicture.asset(
                                'assets/icons/twitter.svg',
                                color: kPrimary,
                                height: 20,
                              ),
                              SvgPicture.asset(
                                'assets/icons/google-plus.svg',
                                color: kPrimary,
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ]),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/signup_top.png',
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
