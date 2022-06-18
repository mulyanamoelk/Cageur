import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';

class Hero_Details extends StatelessWidget {
  const Hero_Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Image.asset(
          'assets/images/rumahSakit.png',
          width: 444,
          height: 286,
        ),
        Positioned(
            top: 30,
            left: 24,
            child: CircleAvatar(
                backgroundColor: kwhite,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: kgrey,
                    ))))
      ],
    ));
  }
}
