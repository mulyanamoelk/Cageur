import 'package:flutter/material.dart';

import '../../../styles/custom_font_style.dart';

class TitleVerification extends StatelessWidget {
  const TitleVerification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 87),
      child: Center(
        child: Column(
          children: [
            Text(
              'Check your email',
              style: TitleFontVerification,
            ),
            Text(
              'We’ve sent the code to your email',
              style: font_sub_signin,
            )
          ],
        ),
      ),
    );
  }
}
