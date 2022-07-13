import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../styles/constrans.dart';

class DropdownGender extends StatefulWidget {
  const DropdownGender({Key? key}) : super(key: key);

  @override
  State<DropdownGender> createState() => _DropdownGenderState();
}

class _DropdownGenderState extends State<DropdownGender> {
  var genders = ['Laki-Laki', 'Wanita'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: DropdownButtonFormField(
          icon: ImageIcon(
            AssetImage('assets/images/genders.png'),
            color: kgreen,
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: kgrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: kgreen, width: 1))),
          items: genders
              .map((String genders) =>
                  DropdownMenuItem(value: genders, child: Text(genders)))
              .toList(),
          value: 'Laki-Laki',
          onChanged: (newValue) {
            setState(() {});
          }),
    );
  }
}
