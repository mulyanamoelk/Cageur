import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

import '../../../styles/constrans.dart';

class FormTtl extends StatelessWidget {
  const FormTtl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Custom_Form_Suf(
          textValue: 'Isi tanggal Lahir',
          hintText: '01-03-2022',
          icon: Icon(
            Icons.calendar_month,
            color: kgreen,
          ),
          typeInput: TextInputType.number),
    );
  }
}
