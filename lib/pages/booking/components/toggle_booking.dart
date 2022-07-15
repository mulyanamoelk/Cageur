import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';
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
              } else {}
            },
          ),
        ],
      ),
    );
    //
  }
}

_Alert(BuildContext context) {
  Alert(
    context: context,
    content: Column(
      children: [
        SizedBox(
          height: 24,
        ),
        custom_button(text: 'Save', onPressed: () {}, warna: kgreen)
      ],
    ),
    title: "ISI DATA",
    desc: "Jika sudah isi dengan lengkap harap disave.",
  ).show();
}
