import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signin_page/components/body_signin.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Signin(),
    );
  }
}
