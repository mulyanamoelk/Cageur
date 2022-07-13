import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class CustomInkwellChat extends StatelessWidget {
  final String texts;
  final Icon icons;

  final Function() ontaps;
  const CustomInkwellChat(
      {Key? key,
      required this.texts,
      required this.icons,
      required this.ontaps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontaps,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: kgrey, borderRadius: BorderRadius.circular(50)),
            child: icons,
          ),
          Text(
            texts,
            style: TextStyle(
                fontSize: 12, color: kgreyText, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
