import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

import '../../../widget/custom_form_suf.dart';

class FormEmailForgot extends StatelessWidget {
  const FormEmailForgot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Custom_Form_Suf(
          hintText: 'Email',
          icon: Icon(
            Icons.mail,
            color: kgreen,
          ),
          typeInput: TextInputType.emailAddress),
    );
  }
}
