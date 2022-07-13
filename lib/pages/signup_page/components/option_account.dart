import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';

import '../../../styles/constrans.dart';
import '../../../styles/custom_font_style.dart';

class Sudah_Punya extends StatelessWidget {
  const Sudah_Punya({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah punya Akun?',
              style: font_pa_signin,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: kgreen, fontSize: 15, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
