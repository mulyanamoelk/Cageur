import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_time.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../styles/constrans.dart';

class ToggleSwitchTime extends StatefulWidget {
  const ToggleSwitchTime({Key? key}) : super(key: key);

  @override
  State<ToggleSwitchTime> createState() => _ToggleSwitchTimeState();
}

class _ToggleSwitchTimeState extends State<ToggleSwitchTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ToggleSwitch(
            minWidth: 120,
            cornerRadius: 32,
            inactiveBgColor: kgrey,
            activeBgColor: [kgreen],
            activeFgColor: kwhite,
            totalSwitches: 2,
            labels: ['Pagi', 'Sore'],
            onToggle: (index) {
              if (index == 0) {
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
