import 'package:flutter/material.dart';
import 'package:sistem_antrian/Widget/custom_button.dart';
import 'package:sistem_antrian/pages/history_page/components/history_dokter.dart';
import 'package:sistem_antrian/pages/profile_page/components/popup_menu.dart';
import 'package:sistem_antrian/pages/profile_page/components/popup_menu_profile.dart';
import 'package:sistem_antrian/pages/update_profile/update_profile.dart';
import 'package:sistem_antrian/widget/custom_inkwell.dart';

import '../../styles/constrans.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kwhite,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kgrey,
            ),
          ),
          actions: [PopupProfil()],
        ),
        body: Container(
            child: Stack(
          children: [
            Positioned(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          child: Image.asset('assets/images/jhon.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Doni Setiadi',
                          style: TextStyle(
                              color: kgreyText,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 20,
                top: 300,
                child: Container(
                  child: Column(
                    children: [
                      CustomInkwellChat(
                          texts: 'Chat',
                          icons: Icon(
                            Icons.chat,
                          ),
                          ontaps: () {}),
                      CustomInkwellChat(
                          texts: 'Booking',
                          icons: Icon(Icons.calendar_month),
                          ontaps: () {}),
                      CustomInkwellChat(
                          texts: 'Update',
                          icons: Icon(Icons.person),
                          ontaps: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const UpdateProfile()));
                          }),
                      CustomInkwellChat(
                          texts: 'Logout',
                          icons: Icon(Icons.logout),
                          ontaps: () {})
                    ],
                  ),
                ))
          ],
        )));
  }
}
