import 'package:flutter/material.dart';

import '../../../styles/custom_font_style.dart';

class section_title extends StatelessWidget {
  const section_title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mudah konsultasi \n& membuat janji \ndengan tim Medis',
            textAlign: TextAlign.center,
            style: title_text,
          ),
        ],
      ),
    );
  }
}
