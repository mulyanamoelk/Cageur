import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/dokter.dart';
import 'package:sistem_antrian/pages/search_page/components/item_dokter.dart';

class Listview_Dokter extends StatelessWidget {
  const Listview_Dokter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 12,
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
