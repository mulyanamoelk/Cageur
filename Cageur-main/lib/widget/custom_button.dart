import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class custom_button extends StatelessWidget {
  final String text;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const custom_button(
      {Key? key,
      required this.text,
      this.width = double.infinity,
      required this.onPressed,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 56,
      decoration:
          BoxDecoration(color: kgreen, borderRadius: BorderRadius.circular(32)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: kwhite, fontSize: 15, fontWeight: FontWeight.bold),
          )),
    );
  }
}
