import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/forgot_password/components/body_forgot_password.dart';

class ForgotPasswords extends StatelessWidget {
  const ForgotPasswords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyForgotPassword(),
    );
  }
}
