import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_form.dart';

import '../../../styles/constrans.dart';

class Search_Form extends StatelessWidget {
  const Search_Form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 29, right: 29, top: 10),
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: kgreen,
              ),
              hintText: 'Cari Dokter',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: kgrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: kgreen, width: 1))),
        ));
  }
}
