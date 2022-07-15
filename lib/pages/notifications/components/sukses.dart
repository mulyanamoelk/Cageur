import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              Section(),
              Section2Success(),
              Section3Success(),
              Section4Success()
            ],
          ),
        )
      ],
    );
  }
}

class Section4Success extends StatelessWidget {
  const Section4Success({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, top: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 37,
            height: 42,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kgrey, width: 1)),
            child: Center(
              child: Column(
                children: [
                  Text(
                    '13',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Maret',
                    style: TextStyle(fontSize: 9),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'senin, 04:00 pm',
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold, color: kgrey),
                ),
                Text(
                  '20 Mins',
                  style: TextStyle(color: kgreyText, fontSize: 11),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Section3Success extends StatelessWidget {
  const Section3Success({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Text(
        textAlign: TextAlign.center,
        'Di harapkan datang paling lambat 15 menit \n sebelum estimasi jam pendaftaraan',
        style: FontSukses,
      ),
    );
  }
}

class Section2Success extends StatelessWidget {
  const Section2Success({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nomor Antrian',
                  style: FontSukses,
                ),
                Text(
                  'F12-01',
                  style: FontSukses,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NIK',
                  style: FontSukses,
                ),
                Text(
                  '32505067300167487',
                  style: FontSukses,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nama Dokter',
                  style: FontSukses,
                ),
                Text(
                  'Dr. Luthfi',
                  style: FontSukses,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Poli Tujuan',
                  style: FontSukses,
                ),
                Text(
                  'Bedah',
                  style: FontSukses,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Dr. Luthfi',
            style: TextStyle(color: kblack, fontSize: 18),
          ),
          CircleAvatar(
            backgroundColor: kwhite,
            radius: 45,
            child: Image.asset('assets/images/dokter.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 100,
              height: 21,
              decoration: BoxDecoration(
                  color: kgrey, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text('View Profile'),
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            'Pendaftaran Berhasil',
            style: TextStyle(
                color: kgreyText, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
