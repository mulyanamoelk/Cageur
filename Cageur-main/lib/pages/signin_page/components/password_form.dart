import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

class Password_Form extends StatelessWidget {
  const Password_Form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
      child: Custom_Form_Suf(
          obscure: true,
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kgreen,
          ),
          typeInput: TextInputType.visiblePassword),
    );
  }
}
