import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sistem_antrian/views/splash_second/splash_second.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:lottie/lottie.dart';

class splash_satu extends StatefulWidget {
  const splash_satu({Key? key}) : super(key: key);

  @override
  State<splash_satu> createState() => _splash_satuState();
}

class _splash_satuState extends State<splash_satu> {
  @override
  void initState() {
    super.initState();
    splash_satu();
  }

  splash_satu() async {
    var duration = Duration(seconds: 3);
    Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => splash_second()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Positioned(
              top: 64,
              left: 24,
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/logo_cageur.png',
                      width: 82,
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 174,
              left: 24,
              child: Text(
                ' Mudah konsultasi \n & membuat janji \n dengan tim Medis',
                style: title_text,
              )),
          Positioned(
            top: 310,
            left: 34,
            child: Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',
                width: 341,
                height: 327),
          ),
          Positioned(
              top: 600,
              child: Image(
                image: AssetImage(
                  'assets/images/splash_satu.png',
                ),
                width: 365,
                height: 337,
              ))
        ],
      )),
    );
  }
}
