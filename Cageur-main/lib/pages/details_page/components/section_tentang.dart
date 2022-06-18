import 'package:flutter/material.dart';

class Section_Tentang extends StatelessWidget {
  const Section_Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tentang = [
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
      'assets/images/tentang.png',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            tentang.length, (index) => Item_Tentang(images: tentang[index])),
      ),
    );
  }
}

class Item_Tentang extends StatelessWidget {
  final String? images;
  const Item_Tentang({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Image.asset(
              images!,
              width: 112,
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}
