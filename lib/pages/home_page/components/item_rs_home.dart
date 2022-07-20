import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/rumah_sakit.dart';
import 'package:sistem_antrian/pages/details_page/details_page.dart';
import 'package:sistem_antrian/pages/home_page/components/title_category_home.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

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
        'image': 'assets/images/anisa_queen.jpg',
        'text': 'Anisa Queen',
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
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              ' Rs/Klinik Sekitar anda',
              style: font_sub_title_home,
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    rs.length,
                    (index) => CategoryCard(
                        image: rs[index]["image"],
                        text: rs[index]['text'],
                        press: () {
                          rs[index]["link"];
                        })),
              )),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String? image, text;
  final Function() press;

  const CategoryCard(
      {Key? key, required this.image, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: SizedBox(
          width: 120,
          height: 140,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17),
                      topRight: Radius.circular(17)),
                  child: Image.asset(
                    image!,
                    width: 120,
                    height: 95,
                  ),
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
