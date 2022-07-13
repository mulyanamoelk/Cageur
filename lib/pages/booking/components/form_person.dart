import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

import '../../../widget/custom_form_suf.dart';

class FormPerson extends StatelessWidget {
  const FormPerson({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Custom_Form_Suf(
          textValue: 'Isi nama lengkap',
          hintText: 'Nama Lengkap',
          icon: Icon(
            Icons.person,
            color: kgreen,
          ),
          typeInput: TextInputType.text),
    );
  }
}
