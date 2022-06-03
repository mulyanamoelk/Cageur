import 'package:flutter/material.dart';
import 'package:sistem_antrian/widget/custom_form.dart';

class Search_Form extends StatelessWidget {
  const Search_Form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 29, right: 29, top: 10),
      child: Custom_Form(
          hintText: 'Cari Dokter',
          icon: Icon(Icons.search),
          typeInput: TextInputType.text),
    );
  }
}
