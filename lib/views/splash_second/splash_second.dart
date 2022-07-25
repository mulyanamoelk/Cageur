import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class splash_second extends StatefulWidget {
  const splash_second({Key? key}) : super(key: key);

  @override
  State<splash_second> createState() => _splash_secondState();
}

class _splash_secondState extends State<splash_second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                left: 90,
                child: Container(
                  height: 337,
                  width: 365,
                  child: Image(
                      image: AssetImage('assets/images/splash_second.png')),
                )),
            Positioned(
                top: 191,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        ' Sehat adalah \n Aset terbesar kita ',
                        style: title_text,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 34),
                        child: Column(
                          children: [
                            Lottie.network(
                                'https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',
                                width: 341,
                                height: 327),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 179,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: kgreen,
                                  borderRadius: BorderRadius.circular(17)),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ConvexNavigationBar()));
                                  },
                                  child: Text(
                                    'Mulai',
                                    style:
                                        TextStyle(color: kwhite, fontSize: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
