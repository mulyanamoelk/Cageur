import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_password.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _isHidePassword = true;
  void tooglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 78, right: 24, left: 24),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Reset your password',
                      style: TextStyle(
                          color: kpurple,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Please enter your new password',
                      style: TextStyle(color: kgrey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomPassword(
                        hintText: 'New Password',
                        iconsSuff: IconButton(
                            onPressed: () {
                              setState(() {
                                _isHidePassword = !_isHidePassword;
                              });
                            },
                            icon: Icon(
                              _isHidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: _isHidePassword ? kgrey : kgreen,
                            )),
                        iconsPre: Icon(
                          Icons.lock,
                          color: kgreen,
                        ),
                        Obscure: true,
                        ValidatorValue: 'Isi Password'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomPassword(
                        hintText: 'Try New Password',
                        iconsSuff: IconButton(
                            onPressed: () {
                              setState(() {
                                _isHidePassword = !_isHidePassword;
                              });
                            },
                            icon: Icon(
                              _isHidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: _isHidePassword ? kgrey : kgreen,
                            )),
                        iconsPre: Icon(
                          Icons.lock,
                          color: kgreen,
                        ),
                        Obscure: true,
                        ValidatorValue: 'Isi Password'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Password must contain:',
                    style: TextStyle(
                        color: kpurpleText,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.done,
                        color: kgreen,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Atleast 6 characters',
                        style: TextStyle(color: kpurpleText, fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.done,
                        color: kgrey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Contains a number',
                        style: TextStyle(color: kpurpleText, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  custom_button(
                      text: 'Done',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                      },
                      warna: kgreen,
                      textcolors: kwhite)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
