import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';

class Title_Tentang extends StatelessWidget {
  const Title_Tentang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tentang Klinik',
        style: TextStyle(
            color: kgreyText, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
