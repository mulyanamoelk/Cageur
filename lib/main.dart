import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/pages/details_page/details_page.dart';
import 'package:sistem_antrian/pages/home_page/home_page.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/views/splash/splash.dart';
import 'package:sistem_antrian/views/splash_second/splash_second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        'bottom_navigation': (BuildContext context) => Convex_Navigation_Bar(),
        'home': (BuildContext contex) => home_page(),
        'details': (BuildContext context) => DetailPage()
      },
      home: splash_satu(),
    );
  }
}
