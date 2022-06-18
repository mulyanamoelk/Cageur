import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class title_notification extends StatelessWidget {
  const title_notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Center(
        child: Text(
          'Bookings',
          style: font_sub_title_notification,
        ),
      ),
    );
  }
}
