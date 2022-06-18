import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lottie_splash_satu extends StatelessWidget {
  const lottie_splash_satu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 34),
      child: Lottie.network(
          'https://assets1.lottiefiles.com/packages/lf20_fxvz0c.json',
          width: 341,
          height: 327),
    );
  }
}
