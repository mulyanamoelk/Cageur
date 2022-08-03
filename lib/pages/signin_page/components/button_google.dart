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
    return _currentUser == null
        ? Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            width: double.infinity,
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () => _handleSignIn(),
                    child: CircleAvatar(
                      backgroundColor: kwhite,
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 35,
                      ),
                    )),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                    child: CircleAvatar(
                  backgroundColor: kwhite,
                  child: Image.asset(
                    'assets/images/facebook.png',
                    width: 35,
                  ),
                )),
              ],
            ))
        : Container(
            child: ListTile(
              leading: GoogleUserCircleAvatar(identity: _currentUser!),
              title: Text(_currentUser!.displayName ?? ''),
              subtitle: Text(_currentUser!.email),
            ),
          );
  }
}
