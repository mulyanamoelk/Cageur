import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';

class Section_Empat extends StatelessWidget {
  const Section_Empat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Klinik yang tersedia',
          style: TextStyle(
              color: kgreyText, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 52, right: 52),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/ortho.png',
                      width: 42,
                      height: 45,
                    ),
                    Text(
                      'Ortho',
                      style: TextStyle(color: kgreyText, fontSize: 13),
                    )
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/paru.png',
                      width: 42,
                      height: 45,
                    ),
                    Text(
                      'Paru',
                      style: TextStyle(color: kgreyText, fontSize: 13),
                    )
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/urology.png',
                      width: 42,
                      height: 45,
                    ),
                    Text(
                      'Urology',
                      style: TextStyle(color: kgreyText, fontSize: 13),
                    )
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/jantung.png',
                      width: 42,
                      height: 45,
                    ),
                    Text(
                      'Jantung',
                      style: TextStyle(color: kgreyText, fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
