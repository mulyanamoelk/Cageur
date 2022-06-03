import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class section_title_home extends StatelessWidget {
  const section_title_home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo_cageur.png',
            width: 74,
            height: 68,
          ),
          Text(
            ' Rumah sakit & klinik \n Terdekat',
            textAlign: TextAlign.center,
            style: title_text,
          )
        ],
      ),
    );
  }
}
