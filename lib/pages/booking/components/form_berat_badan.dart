import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form_suf.dart';

class FormBb extends StatelessWidget {
  const FormBb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Custom_Form_Suf(
          textValue: 'Isi berat badan',
          hintText: '65 Kg',
          icon: Icon(
            Icons.woman_outlined,
            color: kgreen,
          ),
          typeInput: TextInputType.text),
    );
  }
}
