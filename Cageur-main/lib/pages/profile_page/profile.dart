import 'package:flutter/material.dart';
import 'package:sistem_antrian/Widget/custom_button.dart';
import 'package:sistem_antrian/pages/profile_page/components/form_notification.dart';
import 'package:sistem_antrian/pages/profile_page/components/image_profile.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

import 'components/button_profile.dart';
import 'components/name_notification.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: kgrey,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: kgrey,
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image_profile(),
            Name_Notification(),
            Form_Notification(),
            Button_Notification()
          ],
        ),
      ),
    );
  }
}
