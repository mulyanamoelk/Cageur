import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';

import '../../../styles/constrans.dart';

class DropdownPribadi extends StatefulWidget {
  const DropdownPribadi({Key? key}) : super(key: key);

  @override
  State<DropdownPribadi> createState() => _DropdownPribadiState();
}

class _DropdownPribadiState extends State<DropdownPribadi> {
  late String newValue;
  var pribadi = ['Pribadi', 'Kerabat'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10, bottom: 10),
      child: DropdownButtonFormField(
          icon: ImageIcon(
            AssetImage('assets/images/user.png'),
            color: kgreen,
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: kgrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(color: kgreen, width: 1))),
          items: pribadi
              .map((String pribadi) => DropdownMenuItem<String>(
                  value: pribadi, child: Text(pribadi)))
              .toList(),
          value: 'Pribadi',
          onChanged: (newValue) {
            setState(() {});
          }),
    );
  }
}
