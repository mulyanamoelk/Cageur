import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form_suf.dart';

class FormEmail extends StatelessWidget {
  const FormEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 10,
      ),
      child: Custom_Form_Suf(
          hintText: 'Cageur@gmail.com',
          icon: Icon(
            Icons.phone,
            color: kgreen,
          ),
          typeInput: TextInputType.emailAddress),
    );
  }
}
