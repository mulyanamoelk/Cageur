import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:toggle_switch/toggle_switch.dart';

class toggle_notification extends StatelessWidget {
  const toggle_notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 36, right: 36),
      child: ToggleSwitch(
        minHeight: 56,
        minWidth: 112,
        fontSize: 16.0,
        initialLabelIndex: 1,
        cornerRadius: 32,
        activeBgColor: [Color(0XFF1FCC79)],
        activeFgColor: Colors.white,
        inactiveBgColor: kgreyBack,
        inactiveFgColor: Colors.grey[900],
        totalSwitches: 3,
        labels: ['Sukses', 'Diproses', 'Batal'],
        onToggle: (index) {},
      ),
    );
  }
}
