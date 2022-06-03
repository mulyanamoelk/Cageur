import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class Name_Notification extends StatelessWidget {
  const Name_Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'doni setiadi',
      style: font_sub_title_notification,
    );
  }
}
