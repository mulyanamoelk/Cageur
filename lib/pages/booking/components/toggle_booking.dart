import 'dart:math';

import 'package:flutter/material.dart';

import 'package:sistem_antrian/pages/booking/booking.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/pages/notifications/notification_page.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/pages/signup_page/signup.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../styles/constrans.dart';

class ToggleBooking extends StatefulWidget {
  const ToggleBooking({Key? key}) : super(key: key);

  @override
  State<ToggleBooking> createState() => _ToggleBookingState();
}

class _ToggleBookingState extends State<ToggleBooking> {
  List<bool> _isSelected = List.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          ToggleSwitch(
            minWidth: 120,
            cornerRadius: 32,
            activeBgColor: [Color(0XFF1FCC79)],
            activeFgColor: Colors.white,
            inactiveBgColor: kgrey,
            inactiveFgColor: kpurple,
            totalSwitches: 2,
            labels: ['Baru', 'Lama'],
            onToggle: (index) {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BookingPage()));
              } else {
                alertUserLama(context);
              }
            },
          ),
        ],
      ),
    );
    //
  }

  alertUserLama(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: AlertUserLama(),
          );
        });
  }
}

class AlertUserLama extends StatefulWidget {
  const AlertUserLama({Key? key}) : super(key: key);

  @override
  State<AlertUserLama> createState() => _AlertUserLamaState();
}

class _AlertUserLamaState extends State<AlertUserLama> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      height: max(400, MediaQuery.of(context).size.height * 0.3),
      child: Column(
        children: [
          Text(
            'Pasien Lama ',
            style: TextStyle(color: kpurple, fontSize: 24),
          ),
          SizedBox(
            height: 24,
          ),
          Text('Masukan NIK'),
          Custom_Form_Suf(
              hintText: 'Nomor NIK',
              icon: Icon(
                Icons.tag,
                color: kgreen,
              ),
              typeInput: TextInputType.number,
              textValue: 'Isi NIK'),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 125,
                  decoration: BoxDecoration(
                      border: Border.all(color: kgrey, width: 2),
                      color: kwhite,
                      borderRadius: BorderRadius.circular(32)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Kembali',
                        style: TextStyle(
                            color: kpurple,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  width: 125,
                  decoration: BoxDecoration(
                      color: kgreen, borderRadius: BorderRadius.circular(32)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConvexNavigationBar()));
                      },
                      child: Text(
                        'Lanjut',
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
