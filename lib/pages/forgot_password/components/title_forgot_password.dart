import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

import '../../../styles/constrans.dart';

class TitleForgotPassword extends StatelessWidget {
  const TitleForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 101),
      child: Center(
        child: Column(
          children: [
            Text('Password recovery', style: TitleFontVerification),
            Text(
              'Enter your email to recover your password',
              style: font_sub_signin,
            )
          ],
        ),
      ),
    );
  }
}
