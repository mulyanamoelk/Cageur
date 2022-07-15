import 'package:flutter/material.dart';

import '../styles/constrans.dart';

class Custom_Form_Suf extends StatelessWidget {
  final Icon icon;
  final String textValue;
  final TextInputType typeInput;
  final String hintText;
  final bool obscure;

  const Custom_Form_Suf({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.typeInput,
    this.obscure = false,
    required this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        keyboardType: typeInput,
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
        validator: (value) {
          if (value!.isEmpty) {
            return textValue;
          } else {
            return null;
          }
        },
      ),
    );
  }
}
