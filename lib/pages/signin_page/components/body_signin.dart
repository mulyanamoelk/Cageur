import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';
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

class BodySignIn extends StatefulWidget {
  const BodySignIn({Key? key}) : super(key: key);

  @override
  State<BodySignIn> createState() => _BodySignInState();
}

class _BodySignInState extends State<BodySignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Title_Signin(),
        Form(
            key: _formKey,
            child: Column(
              children: [
                Email_Form(),
                FormPassword(),
              ],
            )),
        Forgot_Password(),
        ButtonSignIn(formKey: _formKey),
        Option(),
        Button_Google(),
        Option_Belum()
      ],
    );
  }
}
