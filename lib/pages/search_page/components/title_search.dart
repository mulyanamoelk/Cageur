import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

import '../../../styles/constrans.dart';

class Title_Search extends StatelessWidget {
  const Title_Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Temukan dokter mu',
            style: title_text,
          ),
          Text(
            ' pelayanan kesehatan hadir ditengah \n keluarga anda',
            style: TextStyle(color: kgrey, fontSize: 16),
          )
        ],
      ),
    );
  }
}
