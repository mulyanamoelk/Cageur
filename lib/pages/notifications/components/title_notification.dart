import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class TitleNotification extends StatelessWidget {
  const TitleNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Center(
        child: Text(
          'Bookings',
          style: font_sub_title_notification,
        ),
      ),
    );
  }
}
