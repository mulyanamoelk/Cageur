import 'package:flutter/material.dart';

import '../styles/constrans.dart';

class CustomPassword extends StatelessWidget {
  final String hintText;
  final IconButton iconsSuff;
  final Icon iconsPre;
  final bool Obscure;
  final String ValidatorValue;
  const CustomPassword({
    Key? key,
    required this.hintText,
    required this.iconsSuff,
    required this.iconsPre,
    required this.Obscure,
    required this.ValidatorValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: Obscure,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: kgrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: kgreen)),
          prefixIcon: iconsPre,
          suffixIcon: iconsSuff,
          hintText: hintText),
      validator: (value) {
        if (value!.isEmpty) {
          return ValidatorValue;
        } else {
          return null;
        }
      },
    );
  }
}
