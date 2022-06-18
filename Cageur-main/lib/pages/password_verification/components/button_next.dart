import 'package:flutter/material.dart';

import '../../../Widget/custom_button.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
      child: custom_button(text: 'Next', onPressed: () {}),
    );
  }
}
