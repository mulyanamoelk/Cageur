import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class CustomTime extends StatelessWidget {
  final String texts;
  const CustomTime({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kgrey, width: 1),
            borderRadius: BorderRadius.circular(10)),
        width: 100,
        height: 40,
        child: TextButton(
            onPressed: () {},
            child: Text(
              textAlign: TextAlign.justify,
              texts,
              style: TextStyle(color: kblack, fontSize: 12),
            )));
  }
}
