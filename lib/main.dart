import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/sign_up.dart';
import 'screens/wlcome.dart';

void main() {
  runApp(const WelcomeLoginSignUp());
}

class WelcomeLoginSignUp extends StatelessWidget {
  const WelcomeLoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
         "/" : (context) => const WelcomePage(),
         WelcomePage.signUp : (context) => const SignUpPage(),
         WelcomePage.signIn : (context) => const LoginPage(),
      },
      initialRoute: "/",
    );
  }
}