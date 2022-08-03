import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/password_verification/components/button_next.dart';
import 'package:sistem_antrian/pages/password_verification/components/title_verification.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

class BodyVerificationPassword extends StatelessWidget {
  const BodyVerificationPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleVerification(),
        CodeEmail(),
        CodeExpires(),
        ButtonNext(),
        ButtonSendAgain()
      ],
    );
  }
}

class ButtonSendAgain extends StatelessWidget {
  const ButtonSendAgain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: custom_button(
          text: 'Send Again',
          onPressed: () {},
          warna: kwhite,
          textcolors: kgrey),
    );
  }
}

class CodeEmail extends StatelessWidget {
  const CodeEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kgrey, width: 1),
            ),
            child: Center(
              child: Text(
                '8',
                style: TextStyle(
                    color: kpurpleText,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kgrey, width: 1),
            ),
            child: Center(
              child: Text(
                '8',
                style: TextStyle(
                    color: kpurpleText,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kgrey, width: 1),
            ),
            child: Center(
              child: Text(
                '7',
                style: TextStyle(
                    color: kpurpleText,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kgreen, width: 1),
            ),
            child: Center(
              child: Text(
                '6',
                style: TextStyle(
                    color: kpurpleText,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CodeExpires extends StatelessWidget {
  const CodeExpires({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Code Expires in : ',
            style: TextStyle(color: kgrey, fontSize: 15),
          ),
          Text('03:12', style: TextStyle(color: Colors.red, fontSize: 15))
        ],
      )),
    );
  }
}
