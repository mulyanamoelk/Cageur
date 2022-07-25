import 'dart:math';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';
import 'package:sistem_antrian/pages/jadwal_page/components/toggle_switch_time.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';

import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:sistem_antrian/widget/custom_time.dart';
import 'package:time_range/time_range.dart';

import 'package:toggle_switch/toggle_switch.dart';

class AturJadwal extends StatefulWidget {
  const AturJadwal({Key? key}) : super(key: key);

  @override
  State<AturJadwal> createState() => _AturJadwalState();
}

class _AturJadwalState extends State<AturJadwal> {
  DateTime _selectedTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kwhite,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kgrey,
            )),
      ),
      body: Container(
        child: ListView(
          children: [
            _addDokterImage(),
            _addDateNow(),
            _addDatePicker(),
            SizedBox(
              height: 24,
            ),
            ToggleSwitchTime(),
            TimeRange(
              fromTitle: Text(
                '',
                style: TextStyle(fontSize: 18, color: kgrey),
              ),
              toTitle: Text(
                '',
                style: TextStyle(fontSize: 18, color: kgrey),
              ),
              titlePadding: 20,
              textStyle: TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black87),
              activeTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              borderColor: kgrey,
              backgroundColor: Colors.transparent,
              activeBackgroundColor: kgrey,
              firstTime: TimeOfDay(hour: 08, minute: 00),
              lastTime: TimeOfDay(hour: 24, minute: 00),
              timeStep: 15,
              timeBlock: 15,
              activeBorderColor: kgreen,
              onRangeCompleted: (range) => setState(() => print(range)),
            )
          ],
        ),
      ),
    );
  }

  _addDokterImage() {
    return Container(
      margin: EdgeInsets.only(left: 34, top: 10, bottom: 15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: kgreen, width: 1),
                color: kwhite,
                borderRadius: BorderRadius.circular(90)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundColor: kgreen,
                radius: 45,
                child: Image.asset('assets/images/anak.png'),
              ),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Dr. Sinta',
                  style: TextStyle(
                      color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('Dokter Anak',
                    style: TextStyle(color: kgreen2, fontSize: 16)),
                Text(
                  '9 Tahun',
                  style: TextStyle(color: kgrey, fontSize: 14),
                ),
                Text('STR,12334455656',
                    style: TextStyle(color: kgrey, fontSize: 14))
              ],
            ),
          )
        ],
      ),
    );
  }

  _addDateNow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 18, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: TextStyle(color: kgrey, fontSize: 24),
              ),
              Text(
                'Today',
                style: TextStyle(
                    color: kpurple, fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15, top: 10),
          width: 156,
          height: 56,
          decoration: BoxDecoration(
              color: kgreen, borderRadius: BorderRadius.circular(14)),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignInPage()));
              },
              child: Text('Tambah Jadwal',
                  style: TextStyle(
                      color: kwhite,
                      fontSize: 14,
                      fontWeight: FontWeight.bold))),
        ),
      ],
    );
  }

  _addDatePicker() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: DatePicker(
        height: 100,
        width: 80,
        DateTime.now(),
        initialSelectedDate: DateTime.now(),
        selectionColor: kgreen,
        selectedTextColor: Colors.white,
        dateTextStyle:
            TextStyle(color: kgrey, fontSize: 20, fontWeight: FontWeight.w500),
        dayTextStyle:
            TextStyle(color: kgrey, fontSize: 14, fontWeight: FontWeight.w500),
        monthTextStyle:
            TextStyle(color: kgrey, fontSize: 12, fontWeight: FontWeight.w500),
        onDateChange: (date) {
          _selectedTime = date;
          setState(() {});
        },
      ),
    );
  }
}
