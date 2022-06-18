import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Toggle_History extends StatelessWidget {
  const Toggle_History({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleSwitch(
        minWidth: 152,
        minHeight: 56,
        fontSize: 16.0,
        initialLabelIndex: 1,
        cornerRadius: 32,
        activeBgColor: [Color(0XFF1FCC79)],
        activeFgColor: Colors.white,
        inactiveBgColor: kgreyBack,
        inactiveFgColor: Colors.grey[900],
        totalSwitches: 2,
        labels: ['MENDATANG', 'SEBELUMNYA'],
        onToggle: (index) {},
      ),
    );
  }
}
