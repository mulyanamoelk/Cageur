import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/rumah_sakit.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class Item_Rs_Home extends StatelessWidget {
  const Item_Rs_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> rs = [
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "details"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'Ahclan Medica',
        "link": "/navbar"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/Janji"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/navbar"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/Janji"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/navbar"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/Janji"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/navbar"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/Janji"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/navbar"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/Janji"
      },
      {
        'image': 'assets/images/rsih.png',
        'text': 'RS Nurhayati',
        "link": "/navbar"
      },
    ];
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              rs.length,
              (index) => CategoryCard(
                  image: rs[index]["image"],
                  text: rs[index]['text'],
                  press: () {
                    rs[index]['link'];
                  })),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  final String? image, text;
  final GestureTapCallback press;

  const CategoryCard(
      {Key? key, required this.image, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: 120,
          height: 150,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  child: Image.asset(image!),
                ),
              ),
              SizedBox(height: 5),
              Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(color: kblack, fontSize: 16),
              )
            ],
          )),
    );
  }
}
