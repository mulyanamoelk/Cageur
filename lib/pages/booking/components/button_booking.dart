import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';

import '../../../Widget/custom_button.dart';
import '../../signup_page/signup.dart';

class ButtonBooking extends StatelessWidget {
  const ButtonBooking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, right: 43, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: TextStyle(
                    color: Color(0XFF2E3E5C),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
          custom_button(
            text: 'Simpan',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignIn_Page()));
            },
            width: 156,
          ),
        ],
      ),
    );
  }
}
