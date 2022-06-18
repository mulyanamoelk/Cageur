import 'package:flutter/material.dart';

import '../../../styles/custom_font_style.dart';

class Title_klinik_Search extends StatelessWidget {
  const Title_klinik_Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Text(
          'Klinik Specialist',
          style: title_text,
        ),
      ),
    );
  }
}
