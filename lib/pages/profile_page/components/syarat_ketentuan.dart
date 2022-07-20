import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class SyaratKetentuan extends StatelessWidget {
  const SyaratKetentuan({Key? key}) : super(key: key);

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
        margin: EdgeInsets.only(top: 229),
        child: Column(
          children: [
            Text(
              'Kebijakan Pembatalan & pengembalian Dana',
              style: TextStyle(color: kgreen2, fontSize: 12),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
                ' > Membawa KTP asli untuk pasien baru. \n > Untuk yang pernah melakukan perawatan \n   pemeriksaan diharap membawa kartu pasien \n   pada saat pertama registrasi.'),
          ],
        ),
      ),
    );
  }
}
