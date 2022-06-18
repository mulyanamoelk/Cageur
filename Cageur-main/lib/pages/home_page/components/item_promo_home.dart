import 'package:flutter/material.dart';

class promo_menarik extends StatelessWidget {
  const promo_menarik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> promo = [
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
      {"image": "assets/images/promo.png"},
    ];
    return Padding(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                promo.length,
                (index) => Promo(
                    image: promo[index]["image"],
                    text: promo[index]['text'],
                    press: () {})),
          ),
        ));
  }
}

class Promo extends StatelessWidget {
  final String? image, text;
  final GestureTapCallback press;

  const Promo(
      {Key? key, required this.image, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 166,
        height: 95,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                child: Image.asset(image!),
              ),
            ),

            // Text(
            //   text!,
            //   style: TextStyle(color: kblack, fontSize: 16),
            // )
          ],
        ),
      ),
    );
  }
}
