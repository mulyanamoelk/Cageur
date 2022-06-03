import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sistem_antrian/pages/notifications/components/hero_notif.dart';
import 'package:sistem_antrian/pages/notifications/components/paragrafh_notification.dart';
import 'package:sistem_antrian/pages/notifications/components/title_notification.dart';
import 'package:sistem_antrian/pages/notifications/components/toggle_notidication.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class Body_Notifications extends StatelessWidget {
  const Body_Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        title_notification(),
        toggle_notification(),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
          child: GFProgressBar(
            circleStartAngle: 10,
            backgroundColor: kgrey,
            progressBarColor: kgreen,
            percentage: 0.9,
            lineHeight: 20,
            alignment: MainAxisAlignment.spaceBetween,
            child: const Text(
              '90%',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            leading: Icon(
              Icons.sentiment_dissatisfied,
              color: korange,
            ),
            trailing: Icon(
              Icons.sentiment_satisfied,
              color: kgreen,
            ),
          ),
        ),
        Hero_Notif(),
        paragrafh_notification()
      ],
    ));
  }
}
