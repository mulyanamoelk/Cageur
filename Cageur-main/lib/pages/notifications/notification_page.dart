import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/notifications/components/body_notifications.dart';

class Notification_Page extends StatelessWidget {
  const Notification_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Notifications(),
    );
  }
}
