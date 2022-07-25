import 'package:flutter/material.dart';
import 'package:sistem_antrian/Widget/custom_button.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';
import 'package:sistem_antrian/pages/chat/chat.dart';
import 'package:sistem_antrian/pages/history_page/components/history_dokter.dart';
import 'package:sistem_antrian/pages/profile_page/components/popup_menu.dart';
import 'package:sistem_antrian/pages/profile_page/components/popup_menu_profile.dart';
import 'package:sistem_antrian/pages/update_profile/update_profile.dart';
import 'package:sistem_antrian/widget/custom_inkwell.dart';

import '../../styles/constrans.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String images = 'assets/images/jhon.png';
  String name = 'Mulyana';
  String phone = '089662548161';
  String nik = '3205050107990055';
  String email = "mulyana@gmail.com";

  List<Map<String, dynamic>> alamat = [
    {"alamat": "Kp. Genteng", "rt/rw": "003/013"}
  ];

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
                  CircleAvatar(
                    radius: 60,
                    child: Image.asset(images),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(color: kpurple, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 255,
                left: 24,
                child: Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.only(
                    left: 24,
                    top: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 15, right: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                textAlign: TextAlign.start,
                                nik,
                                style: TextStyle(color: kpurple, fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                textAlign: TextAlign.start,
                                phone,
                                style: TextStyle(color: kpurple, fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                textAlign: TextAlign.start,
                                email,
                                style: TextStyle(color: kpurple, fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 290,
                left: 33,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: kwhite,
                      child: Icon(
                        Icons.tag,
                        color: kgreen,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: kwhite,
                      child: Icon(
                        Icons.phone,
                        color: kgreen,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: kwhite,
                      child: Icon(
                        Icons.mail,
                        color: kgreen,
                      ),
                    ),
                  ],
                )),
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
                          ontaps: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ChatPage()));
                          }),
                      CustomInkwellChat(
                          texts: 'Booking',
                          icons: Icon(Icons.calendar_month),
                          ontaps: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BookingPage()));
                          }),
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
