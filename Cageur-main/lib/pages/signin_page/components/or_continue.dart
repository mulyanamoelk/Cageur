import 'package:flutter/material.dart';

import '../../../styles/custom_font_style.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Center(
        child: Text(
          'Or continue with',
          style: font_sub_signin,
        ),
      ),
    );
  }
}
