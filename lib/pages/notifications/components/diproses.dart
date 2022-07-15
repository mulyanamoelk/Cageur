import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class Diproses extends StatelessWidget {
  const Diproses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_8hurngwb.json',
              width: 341,
              height: 327),
          Text(
            'Status anda lagi diproses',
            style: TextStyle(
                color: kpurple, fontSize: 17, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
