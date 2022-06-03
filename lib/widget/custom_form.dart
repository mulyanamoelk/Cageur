import 'package:flutter/material.dart';

import '../styles/constrans.dart';

class Custom_Form extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextInputType typeInput;
  final bool obscure;

  const Custom_Form({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.typeInput,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: kgrey),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: kgreen)),
          suffixIcon: icon,
          suffixIconColor: kgreen,
          hintText: hintText),
    );
  }
}
