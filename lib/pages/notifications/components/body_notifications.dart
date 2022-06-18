import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sistem_antrian/pages/notifications/components/hero_notif.dart';
import 'package:sistem_antrian/pages/notifications/components/paragrafh_notification.dart';
import 'package:sistem_antrian/pages/notifications/components/progres_notification.dart';
import 'package:sistem_antrian/pages/notifications/components/title_notification.dart';
import 'package:sistem_antrian/pages/notifications/components/toggle_notidication.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class Body_Notifications extends StatelessWidget {
  const Body_Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        title_notification(),
        toggle_notification(),
        progresNotification(),
        Hero_Notif(),
        paragrafh_notification()
      ],
    ));
  }
}
