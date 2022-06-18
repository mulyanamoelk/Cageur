import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/history_page/components/history_dokter.dart';
import 'package:sistem_antrian/pages/history_page/components/toggle_history.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Body_History extends StatelessWidget {
  const Body_History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [Toggle_History(), Expanded(child: HistoryDokters())],
        ),
      ),
    );
  }
}
