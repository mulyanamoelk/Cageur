import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_form_suf.dart';

class Form_Ulangi_Password extends StatelessWidget {
  const Form_Ulangi_Password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, bottom: 10),
      child: Custom_Form_Suf(
          hintText: 'Ulangi Password',
          icon: Icon(
            Icons.lock,
            color: kgreen,
          ),
          typeInput: TextInputType.visiblePassword),
    );
  }
}
