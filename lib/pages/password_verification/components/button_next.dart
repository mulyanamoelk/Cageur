import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/components/new_password.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
        child: custom_button(
          text: 'Next',
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NewPassword()));
          },
          warna: kgreen,
          textcolors: kwhite,
        ));
  }
}
