import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../styles/constrans.dart';

class Toggle_Booking extends StatelessWidget {
  const Toggle_Booking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Pilih  pasien',
            style: TextStyle(color: kgreyText, fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          ToggleSwitch(
            fontSize: 16.0,
            initialLabelIndex: 1,
            cornerRadius: 32,
            activeBgColor: [Color(0XFF1FCC79)],
            activeFgColor: Colors.white,
            inactiveBgColor: kgreyBack,
            inactiveFgColor: Colors.grey[900],
            totalSwitches: 2,
            labels: ['Baru', 'Lama'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ],
      ),
    );
  }
}
