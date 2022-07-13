import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

import '../../../styles/constrans.dart';

class ButtonForgots extends StatelessWidget {
  const ButtonForgots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
        child: custom_button(text: 'text', onPressed: () {}, warna: kgreen));
  }
}
