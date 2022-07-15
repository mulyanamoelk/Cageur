import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class Batal extends StatelessWidget {
  const Batal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Tidak disetujui',
            style: font_pa_signin,
          )
        ],
      ),
    );
  }
}
