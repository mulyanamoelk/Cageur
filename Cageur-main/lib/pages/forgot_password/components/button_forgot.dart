import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/password_verification.dart';

import '../../../Widget/custom_button.dart';

class ButtonForgots extends StatelessWidget {
  const ButtonForgots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      child: custom_button(
          text: 'Lanjut',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VerificationPassword()));
          }),
    );
  }
}
