import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

import '../../../widget/custom_form_suf.dart';

class FormPhone extends StatelessWidget {
  const FormPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Custom_Form_Suf(
          textValue: 'Isi Nomor',
          hintText: '089662548161',
          icon: Icon(
            Icons.phone,
            color: kgreen,
          ),
          typeInput: TextInputType.number),
    );
  }
}
