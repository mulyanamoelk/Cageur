import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signup_page/components/body_signup.dart';

class SignUp_Page extends StatelessWidget {
  const SignUp_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodySignUp(),
    );
  }
}
