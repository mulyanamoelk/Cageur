import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class paragrafh_notification extends StatelessWidget {
  const paragrafh_notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'status anda lagi diproses',
      style: font_sub_title_notification,
    );
  }
}
