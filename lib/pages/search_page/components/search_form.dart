import 'package:flutter/material.dart';
import 'package:sistem_antrian/models/dokter.dart';
import 'package:sistem_antrian/widget/custom_form.dart';

import '../../../styles/constrans.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
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
