import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signup_page/signup.dart';

import '../../../Widget/custom_button.dart';

class Button_Login extends StatelessWidget {
  const Button_Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 60),
      child: custom_button(
          text: 'Login',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp_Page()));
          }),
    );
  }
}
