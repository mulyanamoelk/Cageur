import 'package:flutter/material.dart';

import '../../../styles/custom_font_style.dart';

class Title_SignUp extends StatelessWidget {
  const Title_SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 101),
      child: Center(
        child: Text(
          'Silahkan isi data anda',
          style: TitleFontVerification,
        ),
      ),
    );
  }
}
