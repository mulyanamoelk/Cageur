import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:sistem_antrian/pages/history_page/history_page.dart';
import 'package:sistem_antrian/pages/home_page/home_page.dart';
import 'package:sistem_antrian/pages/notifications/notification_page.dart';
import 'package:sistem_antrian/pages/profile_page/profile.dart';
import 'package:sistem_antrian/pages/search_page/search_page.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class Convex_Navigation_Bar extends StatefulWidget {
  const Convex_Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Convex_Navigation_Bar> createState() => _Convex_Navigation_BarState();
}

class _Convex_Navigation_BarState extends State<Convex_Navigation_Bar> {
  late int index;
  List pages = [
    home_page(),
    History_Page(),
    Search_Page(),
    Notification_Page(),
    Profile()
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: kwhite,
          activeColor: kgreen2,
          color: kgrey,
          elevation: 0,
          style: TabStyle.reactCircle,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.history_sharp, title: 'Riwayat'),
            TabItem(icon: Icons.search, title: 'Search'),
            TabItem(icon: Icons.notifications, title: 'Notification'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
        ));
  }
}
