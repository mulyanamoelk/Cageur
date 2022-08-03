import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signup_page/signup.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

class VerificationCodes extends StatefulWidget {
  const VerificationCodes({Key? key}) : super(key: key);

  @override
  State<VerificationCodes> createState() => _VerificationCodesState();
}

class _VerificationCodesState extends State<VerificationCodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 78),
          child: ListView(
            children: [
              TitleNotificationSms(),
              NotifSmsSignUp(),
              CodeExpires(),
              Padding(
                padding: const EdgeInsets.only(top: 54, left: 24, right: 24),
                child: Column(
                  children: [
                    custom_button(
                        text: 'Verify',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUp_Page()));
                        },
                        warna: kgreen,
                        textcolors: kwhite),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: kgrey, width: 1)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Send again',
                            style: TextStyle(color: kgreyText, fontSize: 15),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
    return Container(
      margin: EdgeInsets.only(top: 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'code expires in : ',
            style: TextStyle(color: kgrey, fontSize: 15),
          ),
          Text(
            '03 : 13',
            style: TextStyle(color: Colors.red, fontSize: 15),
          )
        ],
      ),
    );
  }
}

class NotifSmsSignUp extends StatelessWidget {
  const NotifSmsSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kgrey, width: 1)),
            child: Center(
              child: Text(
                '6',
                style: TextStyle(
                    color: kpurple, fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kgrey, width: 1)),
            child: Center(
              child: Text(
                '5',
                style: TextStyle(
                    color: kpurple, fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kgrey, width: 1)),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(
                    color: kpurple, fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kgreen, width: 1)),
            child: Center(
              child: Text(
                '0',
                style: TextStyle(
                    color: kpurple, fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleNotificationSms extends StatelessWidget {
  const TitleNotificationSms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Check your notif sms',
            style: TextStyle(
                color: kpurple, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            'We.ve sent the code to your email',
            style: TextStyle(color: kgrey, fontSize: 15),
          )
        ],
      ),
    );
  }
}
