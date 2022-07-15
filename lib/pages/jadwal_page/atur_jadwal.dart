import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AturJadwal extends StatefulWidget {
  const AturJadwal({Key? key}) : super(key: key);

  @override
  State<AturJadwal> createState() => _AturJadwalState();
}

class _AturJadwalState extends State<AturJadwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SectionJadwal(),
          TableCalender(),
          Center(
            child: ToggleSwitch(
              minWidth: 120,
              cornerRadius: 32,
              inactiveBgColor: kgreen,
              activeBgColor: [kgrey],
              activeFgColor: kwhite,
              totalSwitches: 2,
              labels: ['Pagi', 'Sore'],
              onToggle: (index) {
                if (index == 0) {}
              },
            ),
          )
        ],
      ),
    );
  }
}

_Alert(BuildContext context) {
  Alert(context: context, title: 'okeh');
}

class TableCalender extends StatelessWidget {
  const TableCalender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(1945, 07, 17),
      lastDay: DateTime.utc(2200, 07, 17),
    );
  }
}

class SectionJadwal extends StatelessWidget {
  const SectionJadwal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 34, top: 50),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kwhite,
            radius: 50,
            child: Image.asset('assets/images/dokter.png'),
          ),
          SizedBox(
            width: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Lutfhi',
                  style: font_pa_signin,
                ),
                Text(
                  'Dokter Umum',
                  style: TextStyle(color: kgreen2, fontSize: 16),
                ),
                Text(
                  '2 Tahun',
                  style: TextStyle(color: kgrey, fontSize: 14),
                ),
                Text(
                  'STR,12334455656',
                  style: TextStyle(color: kgrey, fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
