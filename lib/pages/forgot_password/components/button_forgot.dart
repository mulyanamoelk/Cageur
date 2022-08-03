import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/password_verification.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

import '../../../styles/constrans.dart';

class ButtonForgots extends StatelessWidget {
  const ButtonForgots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 60),
        child: custom_button(
            textcolors: kwhite,
            text: 'Submit',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const VerificationPassword()));
            },
            warna: kgreen));
  }
}
