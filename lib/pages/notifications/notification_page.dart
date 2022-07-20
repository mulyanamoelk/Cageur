import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/details_page/details_page.dart';
import 'package:sistem_antrian/pages/history_page/components/history_dokter.dart';
import 'package:sistem_antrian/pages/notifications/components/batal.dart';
import 'package:sistem_antrian/pages/notifications/components/diproses.dart';
import 'package:sistem_antrian/pages/notifications/components/progres_notification.dart';
import 'package:sistem_antrian/pages/notifications/components/sukses.dart';
import 'package:sistem_antrian/pages/notifications/components/title_notification.dart';
import 'package:sistem_antrian/pages/profile_page/profile.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../styles/constrans.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  int _currentStep = 0;
  List<Step> step = <Step>[
    Step(title: Text('Diproses'), content: Text('data')),
    Step(title: Text('Diproses'), content: Text('data'))
  ];
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TitleNotification(),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: kgrey, borderRadius: BorderRadius.circular(32)),
              child: TabBar(
                  controller: tabController,
                  indicator: BoxDecoration(
                      color: kgreen, borderRadius: BorderRadius.circular(32)),
                  labelColor: kwhite,
                  unselectedLabelColor: kblack,
                  tabs: <Widget>[
                    Tab(
                      text: 'Sukses',
                    ),
                    Tab(
                      text: 'Diproses',
                    ),
                    Tab(
                      text: 'Batal',
                    )
                  ]),
            ),
            Container(
              height: 30,
              width: 300,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  TimelineTile(
                      isFirst: true,
                      axis: TimelineAxis.horizontal,
                      alignment: TimelineAlign.start,
                      indicatorStyle:
                          const IndicatorStyle(width: 100, color: kgrey)),
                  TimelineTile(
                      afterLineStyle: LineStyle(color: kgreen),
                      axis: TimelineAxis.horizontal,
                      indicatorStyle:
                          const IndicatorStyle(width: 100, color: kgrey)),
                  TimelineTile(
                      beforeLineStyle: LineStyle(
                        color: kgreen,
                      ),
                      isLast: true,
                      axis: TimelineAxis.horizontal,
                      indicatorStyle:
                          const IndicatorStyle(width: 100, color: kgrey)),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: <Widget>[SuccessPage(), Diproses(), Batal()]))
          ],
        ),
      ),
    );
  }
}
