import 'package:flutter/material.dart';

import '../../../Widget/custom_button.dart';

class Button_Notification extends StatelessWidget {
  const Button_Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return custom_button(
      text: 'Update',
      onPressed: () {},
      width: 230,
    );
  }
}
