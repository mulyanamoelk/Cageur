import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

import '../../../widget/custom_form_suf.dart';

class FormNik extends StatelessWidget {
  const FormNik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Custom_Form_Suf(
          textValue: 'Isi NIK',
          hintText: 'NIK',
          icon: Icon(
            Icons.credit_card,
            color: kgreen,
          ),
          typeInput: TextInputType.number),
    );
  }
}
