import 'package:flutter/material.dart';

import '../styles/constrans.dart';

class Custom_Form_Suf extends StatelessWidget {
  final Icon icon;
  final TextInputType typeInput;
  final String hintText;
  final bool obscure;
  const Custom_Form_Suf({
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
          prefixIcon: icon,
          suffixIconColor: kgreen,
          hintText: hintText),
    );
  }
}
