import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form.dart';

class Form_Email extends StatelessWidget {
  const Form_Email({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 28,
      ),
      child: Custom_Form_Suf(
          textValue: 'Isi Email',
          hintText: 'Email',
          icon: Icon(
            Icons.mail,
            color: kgreen,
          ),
          typeInput: TextInputType.emailAddress),
    );
  }
}
