import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sistem_antrian/views/splash/components/section_image.dart';

import 'package:sistem_antrian/views/splash/components/section_lottie.dart';
import 'package:sistem_antrian/views/splash/components/section_title.dart';
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
          child: SafeArea(
        child: Column(
          children: [
            section_image_logo(),
            section_title(),
            lottie_splash_satu(),
          ],
        ),
      )),
    );
  }
}
