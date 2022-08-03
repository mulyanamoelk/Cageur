import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/history_dokter.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class ItemHistoryDokter extends StatelessWidget {
  final HistoryDokter image, name, department, str, tahun, status, tanggal;
  const ItemHistoryDokter(
      {Key? key,
      required this.image,
      required this.name,
      required this.department,
      required this.str,
      required this.tahun,
      required this.status,
      required this.tanggal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      margin: EdgeInsets.only(left: 11, right: 11),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: kwhite,
                    border: Border.all(width: 1, color: kgreen)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundColor: kgreen,
                    radius: 40,
                    child: Image.asset(
                      image.images,
                      width: 80,
                    ),
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.name,
                  style: TextStyle(color: kblack, fontSize: 18),
                ),
                Text(
                  department.department,
                  style: TextStyle(color: kgreen, fontSize: 16),
                ),
                Text(
                  tahun.tahun,
                  style: TextStyle(color: kgreyText, fontSize: 14),
                ),
                Text(
                  str.str,
                  style: TextStyle(color: kgreyText, fontSize: 14),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 54,
                    height: 17,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(color: kgrey, width: 1)),
                    child: Center(
                      child: Text(
                        status.status,
                        style: TextStyle(color: kgreyText, fontSize: 7),
                      ),
                    ),
                  ),
                  Text(
                    tanggal.tanggal,
                    style: TextStyle(
                        color: kgrey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
