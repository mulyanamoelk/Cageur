import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signup_page/signup.dart';

import '../../../styles/constrans.dart';
import '../../../styles/custom_font_style.dart';

class Option_Belum extends StatelessWidget {
  const Option_Belum({
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
              'Belum Mempunyai Akun?',
              style: font_pa_signin,
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp_Page()));
                },
                child: Text(
                  'Daftar',
                  style: TextStyle(
                      color: kgreen, fontSize: 15, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
