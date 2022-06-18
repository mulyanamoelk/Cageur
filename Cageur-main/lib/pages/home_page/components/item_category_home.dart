import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class kategori_specialis extends StatelessWidget {
  const kategori_specialis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categori = [
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
      {'image': "assets/images/bedah.png", "text": "Bedah"},
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
        height: 130,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(66),
                ),
                child: Image.asset(image!),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              text!,
              style: TextStyle(color: kblack, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
