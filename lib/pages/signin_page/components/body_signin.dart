import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sistem_antrian/pages/signin_page/components/belum_punya_akun.dart';
import 'package:sistem_antrian/pages/signin_page/components/button_google.dart';
import 'package:sistem_antrian/pages/signin_page/components/button_login.dart';
import 'package:sistem_antrian/pages/signin_page/components/email_form.dart';
import 'package:sistem_antrian/pages/signin_page/components/forgot_password.dart';
import 'package:sistem_antrian/pages/signin_page/components/or_continue.dart';
import 'package:sistem_antrian/pages/signin_page/components/password_form.dart';
import 'package:sistem_antrian/pages/signin_page/components/title_signin.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

class Body_Signin extends StatelessWidget {
  const Body_Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Title_Signin(),
        Email_Form(),
        Password_Form(),
        Forgot_Password(),
        Button_Login(),
        Option(),
        Button_Google(),
        Option_Belum()
      ],
    );
  }
}
