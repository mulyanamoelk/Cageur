import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/pages/details_page/details_page.dart';
import 'package:sistem_antrian/pages/home_page/home_page.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/views/splash/splash.dart';

import 'package:firebase_core/firebase_core.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await (Firebase.initializeApp());
  runApp(const MyApp());
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        'bottom_navigation': (BuildContext context) =>
            const ConvexNavigationBar(),
        'home': (BuildContext contex) => home_page(),
        'details': (BuildContext context) => DetailPage()
      },
      home: splash_satu(),
    );
  }
}
