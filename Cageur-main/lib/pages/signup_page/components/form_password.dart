import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form.dart';

class Form_Password extends StatelessWidget {
  const Form_Password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, bottom: 10),
      child: Custom_Form_Suf(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kgreen,
          ),
          typeInput: TextInputType.visiblePassword),
    );
  }
}
