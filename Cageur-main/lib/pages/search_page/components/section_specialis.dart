import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';

class Section_Specialis extends StatelessWidget {
  const Section_Specialis({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, right: 43),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Booking_Page()));
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/images/ortho.png',
                  width: 42,
                ),
                Text(
                  'Ortho',
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  'assets/images/paru.png',
                  width: 42,
                ),
                Text(
                  'Paru',
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  'assets/images/urology.png',
                  width: 42,
                ),
                Text(
                  'Urology',
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  'assets/images/jantung.png',
                  width: 42,
                ),
                Text(
                  'Jantung',
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
