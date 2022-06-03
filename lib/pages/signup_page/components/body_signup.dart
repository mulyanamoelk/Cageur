import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/pages/signup_page/components/button_signUp.dart';
import 'package:sistem_antrian/pages/signup_page/components/form_email.dart';
import 'package:sistem_antrian/pages/signup_page/components/form_password.dart';
import 'package:sistem_antrian/pages/signup_page/components/form_phone.dart';
import 'package:sistem_antrian/pages/signup_page/components/form_ulangi_password.dart';
import 'package:sistem_antrian/pages/signup_page/components/option_account.dart';
import 'package:sistem_antrian/pages/signup_page/components/title_signup.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

class Body_Signup extends StatelessWidget {
  const Body_Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Title_SignUp(),
        Form_Email(),
        Form_Phone(),
        Form_Password(),
        Form_Ulangi_Password(),
        Button_SignUp(),
        Sudah_Punya()
      ],
    );
  }
}
