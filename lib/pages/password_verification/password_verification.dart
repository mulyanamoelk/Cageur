import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/components/body_verification_password.dart';

class VerificationPassword extends StatelessWidget {
  const VerificationPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyVerificationPassword(),
    );
  }
}
