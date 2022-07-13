import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';
import 'package:sistem_antrian/widget/custom_password.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form.dart';

class FormPassword extends StatefulWidget {
  const FormPassword({Key? key}) : super(key: key);

  @override
  State<FormPassword> createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  bool _isHidePassword = true;
  void _tooglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 10),
      child: CustomPassword(
          hintText: 'Password',
          iconsSuff: IconButton(
              onPressed: () {
                setState(() {
                  _isHidePassword = !_isHidePassword;
                });
              },
              icon: Icon(
                  _isHidePassword ? Icons.visibility_off : Icons.visibility,
                  color: _isHidePassword ? kgrey : kgreen)),
          iconsPre: Icon(
            Icons.lock,
            color: kgreen,
          ),
          Obscure: _isHidePassword,
          ValidatorValue: 'Isi Password'),
    );
  }
}
