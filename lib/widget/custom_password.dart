import 'package:flutter/material.dart';

import '../styles/constrans.dart';

class Password_Form extends StatefulWidget {
  const Password_Form({Key? key}) : super(key: key);

  @override
  State<Password_Form> createState() => _Password_FormState();
}

class _Password_FormState extends State<Password_Form> {
  bool hidePassword = true;
  void togglePasswordVisbility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidePassword,
      initialValue: '',
      autofocus: false,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: kgrey),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: kgreen)),
          hintText: 'Password',
          prefix: Icon(Icons.lock),
          suffixIcon: GestureDetector(
            child: Icon(hidePassword ? Icons.visibility_off : Icons.visibility,
                color: hidePassword ? Color(0xff9FA5C0) : Color(0XFF1FCC79)),
          ),
          isDense: true),
    );
  }
}
