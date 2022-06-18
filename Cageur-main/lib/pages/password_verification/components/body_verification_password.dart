import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/components/button_next.dart';
import 'package:sistem_antrian/pages/password_verification/components/title_verification.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

class BodyVerificationPassword extends StatelessWidget {
  const BodyVerificationPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TitleVerification(), ButtonNext()],
    );
  }
}
