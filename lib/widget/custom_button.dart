import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class custom_button extends StatelessWidget {
  final String text;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color warna, textcolors;

  const custom_button(
      {Key? key,
      required this.text,
      this.width = double.infinity,
      required this.onPressed,
      this.margin = EdgeInsets.zero,
      required this.warna,
      required this.textcolors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 56,
      decoration:
          BoxDecoration(color: warna, borderRadius: BorderRadius.circular(32)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: textcolors, fontSize: 15, fontWeight: FontWeight.bold),
          )),
    );
  }
}
