import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/dokter.dart';

import '../../../styles/constrans.dart';

class Listview_Dokter extends StatelessWidget {
  const Listview_Dokter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dokters.length,
        itemBuilder: (context, index) => Item_Dokter(
            image: dokters[index],
            department: dokters[index],
            name: dokters[index],
            str: dokters[index],
            tahun: dokters[index],
            jam: dokters[index]));
    //
  }
}

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
            Container(
              decoration: BoxDecoration(
                  color: kwhite,
                  border: Border.all(width: 1, color: kgreen),
                  borderRadius: BorderRadius.circular(90)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  backgroundColor: kgreen,
                  radius: 40,
                  child: Image.asset(
                    image.images!,
                    width: 80,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
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
