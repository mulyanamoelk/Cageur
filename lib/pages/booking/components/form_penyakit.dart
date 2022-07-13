import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form_suf.dart';

class FormPenyakit extends StatelessWidget {
  const FormPenyakit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Custom_Form_Suf(
          textValue: 'Apa riwayat penyakit',
          hintText: 'Batuk',
          icon: Icon(
            Icons.coronavirus,
            color: kgreen,
          ),
          typeInput: TextInputType.text),
    );
  }
}
