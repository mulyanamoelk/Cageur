import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class title_rs_home extends StatelessWidget {
  const title_rs_home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Rs/Klinik Sekitar anda',
            style: font_sub_title_home,
          ),
        ],
      ),
    );
  }
}
