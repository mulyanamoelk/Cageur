import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form_suf.dart';

class FormTb extends StatelessWidget {
  const FormTb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 10,
      ),
      child: Custom_Form_Suf(
          hintText: '175 Cm',
          icon: Icon(
            Icons.height,
            color: kgreen,
          ),
          typeInput: TextInputType.text),
    );
  }
}
