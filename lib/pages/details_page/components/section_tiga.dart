import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';

import '../../../styles/custom_font_style.dart';

class Section_Tiga extends StatelessWidget {
  const Section_Tiga({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignInPage()));
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/images/ic_hospital.png',
                  width: 33,
                  height: 37,
                ),
                Text(
                  'bikin janji ',
                  style: font_sub_details,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  'assets/images/ic_medication.png',
                  width: 33,
                  height: 37,
                ),
                Text(
                  'Resep Obat',
                  style: font_sub_details,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset(
                  'assets/images/ic_konsultasi.png',
                  width: 33,
                  height: 37,
                ),
                Text(
                  'Konsultasi  ',
                  style: font_sub_details,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
