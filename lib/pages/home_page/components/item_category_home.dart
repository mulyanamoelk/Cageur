import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class kategori_specialis extends StatelessWidget {
  const kategori_specialis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categori = [
      {'image': "assets/images/dalam.png", "text": "Penyakit \n dalam"},
      {'image': "assets/images/dokter.png", "text": " Dokter \n Umum"},
      {'image': "assets/images/jiwa.png", "text": "Kedokteran \n jiwa"},
      {'image': "assets/images/bedah.png", "text": "Bedah \n Syaraf"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
    ];
    return Padding(
        padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                categori.length,
                (index) => Specialis(
                    image: categori[index]["image"],
                    text: categori[index]['text'],
                    press: () {})),
          ),
        ));
  }
}

class Specialis extends StatelessWidget {
  final String? image, text;
  final GestureTapCallback press;
  const Specialis(
      {Key? key, required this.image, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 80,
        height: 150,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(
                  left: 3,
                ),
                child: CircleAvatar(
                  foregroundColor: kblack,
                  radius: 50,
                  backgroundColor: kgreen,
                  child: Image.asset(
                    image!,
                    width: 57,
                  ),
                )),
            Text(
              textAlign: TextAlign.center,
              text!,
              style: TextStyle(color: kblack, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
