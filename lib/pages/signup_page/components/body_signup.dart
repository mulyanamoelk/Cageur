import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/components/verification_code_sms.dart';
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

class BodySignUp extends StatefulWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  State<BodySignUp> createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
            key: _formKey,
            child: Column(
              children: [
                Title_SignUp(),
                Form_NIK(),
                Form_Email(),
                Form_Phone(),
                FormPassword(),
                FormTryPassword(),
                ButtonSignUp(formKey: _formKey),
                Sudah_Punya()
              ],
            ))
      ],
    );
  }
}

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
      child: custom_button(
          textcolors: kwhite,
          text: 'SignUp',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VerificationCodes()));
            }
          },
          warna: kgreen),
    );
  }
}

class Form_NIK extends StatelessWidget {
  const Form_NIK({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 30),
      child: Custom_Form_Suf(
          hintText: 'NIK',
          icon: Icon(
            Icons.credit_card,
            color: kgreen,
          ),
          typeInput: TextInputType.emailAddress,
          textValue: 'Isi NIK'),
    );
  }
}
