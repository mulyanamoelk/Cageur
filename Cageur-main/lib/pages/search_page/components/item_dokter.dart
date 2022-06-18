import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';

import '../../../models/dokter.dart';

class Item_Dokter extends StatelessWidget {
  final Dokter image, name, department, str, tahun, jam;
  const Item_Dokter(
      {Key? key,
      required this.image,
      required this.department,
      required this.name,
      required this.str,
      required this.tahun,
      required this.jam})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: kgreen),
                    borderRadius: BorderRadius.circular(90),
                    color: kwhite),
                child: Image.asset(
                  image.images!,
                  width: 80,
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.name!,
                    style: TextStyle(color: kblack, fontSize: 18),
                  ),
                  Text(
                    department.department!,
                    style: TextStyle(color: Color(0XFF127451), fontSize: 16),
                  ),
                  Text(
                    tahun.tahun!,
                    style: TextStyle(color: Color(0XFF7A7E86), fontSize: 14),
                  ),
                  Text(
                    str.str!,
                    style: TextStyle(color: Color(0XFF7A7E86), fontSize: 14),
                  ),
                  Text(
                    jam.jam!,
                    style: TextStyle(color: Color(0XFF7A7E86), fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
