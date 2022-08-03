import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:lottie/lottie.dart';

class Batal extends StatelessWidget {
  const Batal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_ddxv3rxw.json'),
          SizedBox(
            height: 54,
          ),
          Text(
            'Tidak disetujui',
            style: font_pa_signin,
          )
        ],
      ),
    );
  }
}
