import 'package:flutter/material.dart';

import '../../../styles/custom_font_style.dart';

class Title_Signin extends StatelessWidget {
  const Title_Signin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 101),
      child: Center(
        child: Column(
          children: [
            Text(
              'Welcome Back!',
              style: TitleFontVerification,
            ),
            Text(
              'Please enter your account here',
              style: font_sub_signin,
            )
          ],
        ),
      ),
    );
  }
}
