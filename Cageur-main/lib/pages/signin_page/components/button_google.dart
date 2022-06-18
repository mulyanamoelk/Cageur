import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';

class Button_Google extends StatelessWidget {
  const Button_Google({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          color: korange, borderRadius: BorderRadius.circular(32)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Google',
            style: TextStyle(
                color: kwhite, fontSize: 15, fontWeight: FontWeight.bold),
          )),
    );
  }
}
