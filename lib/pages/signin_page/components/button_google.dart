import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sistem_antrian/services/auth_services.dart';

import '../../../styles/constrans.dart';

class ButtonGoogle extends StatefulWidget {
  const ButtonGoogle({Key? key}) : super(key: key);

  @override
  State<ButtonGoogle> createState() => _ButtonGoogleState();
}

class _ButtonGoogleState extends State<ButtonGoogle> {
  GoogleSignInAccount? _currentUser;
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((event) {
      setState(() {
        _currentUser = event;
      });
    });
    _googleSignIn.signInSilently();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          color: korange, borderRadius: BorderRadius.circular(32)),
      child: TextButton(
          onPressed: () => _handleSignIn(),
          child: Text(
            'Google',
            style: TextStyle(
                color: kwhite, fontSize: 15, fontWeight: FontWeight.bold),
          )),
    );
  }
}
