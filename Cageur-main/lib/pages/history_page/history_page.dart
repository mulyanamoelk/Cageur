import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/history_page/components/body_history.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class History_Page extends StatelessWidget {
  const History_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kwhite,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kpurple,
            )),
        title: Text(
          'My Appointments',
          style: font_sub_title_notification,
        ),
      ),
      body: Body_History(),
    );
  }
}
