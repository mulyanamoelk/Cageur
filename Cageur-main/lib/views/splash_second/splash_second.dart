import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class splash_second extends StatelessWidget {
  const splash_second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(left: 23, top: 30),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Sehat adalah \nAset terbesar kita ',
                        style: title_text,
                      ),
                      Lottie.network(
                          'https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',
                          width: 341,
                          height: 327),
                      custom_button(
                          width: 179,
                          text: 'Mulai',
                          onPressed: () {
                            Navigator.pushNamed(context, 'bottom_navigation');
                          })
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
