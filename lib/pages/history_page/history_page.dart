import 'package:flutter/material.dart';

import 'package:sistem_antrian/pages/history_page/components/history_dokter.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class History_Page extends StatelessWidget {
  const History_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kwhite,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: kpurple,
                )),
            title: Text(
              'My Appointments',
              style: font_sub_title_notification,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0XFFDBDBDB),
                      borderRadius: BorderRadius.circular(32)),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: kgreyText,
                          borderRadius: BorderRadius.circular(32)),
                      labelColor: kgreen,
                      unselectedLabelColor: kpurple,
                      tabs: <Widget>[
                        Tab(
                          text: 'MENDATANG',
                        ),
                        Tab(
                          text: 'SEBELUMNYA',
                        )
                      ]),
                ),
                Expanded(
                    child: TabBarView(
                        children: <Widget>[HistoryDokters(), HistoryDokters()]))
              ],
            ),
          ),
        ));
  }
}
