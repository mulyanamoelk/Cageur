import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/history_dokter.dart';
import 'package:sistem_antrian/pages/history_page/components/item_history_dokter.dart';

class HistoryDokters extends StatelessWidget {
  const HistoryDokters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ItemHistoryDokter(
            image: histories[index],
            name: histories[index],
            department: histories[index],
            str: histories[index],
            tahun: histories[index],
            status: histories[index],
            tanggal: histories[index]));
  }
}
