import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signinAnonymous() async {
    _auth.signInAnonymously();
  }
}
