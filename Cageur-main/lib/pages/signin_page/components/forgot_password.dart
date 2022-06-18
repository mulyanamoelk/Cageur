import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/forgot_password/forgot_password.dart';

class Forgot_Password extends StatelessWidget {
  const Forgot_Password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPasswords()));
            },
            child: Text(
              'Lupa Password?',
              style: TextStyle(
                  color: Color(0XFF2E3E5C),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
