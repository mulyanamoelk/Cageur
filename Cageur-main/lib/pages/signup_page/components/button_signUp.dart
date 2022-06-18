import 'package:flutter/material.dart';

import '../../../widget/custom_button.dart';
import '../../signin_page/signin_page.dart';

class Button_SignUp extends StatelessWidget {
  const Button_SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 30),
      child: custom_button(
          text: 'Daftar',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignIn_Page()));
          }),
    );
  }
}
