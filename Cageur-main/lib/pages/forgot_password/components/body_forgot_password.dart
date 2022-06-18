import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/forgot_password/components/button_forgot.dart';
import 'package:sistem_antrian/pages/forgot_password/components/form_email.dart';
import 'package:sistem_antrian/pages/forgot_password/components/title_forgot_password.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

import '../../booking/components/form_email.dart';

class BodyForgotPassword extends StatelessWidget {
  const BodyForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TitleForgotPassword(), FormEmailForgot(), ButtonForgots()],
    );
  }
}
