import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../styles/constrans.dart';

class FormGender extends StatelessWidget {
  const FormGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(20),
      child: DropdownButtonHideUnderline(
        child: GFDropdown(
          padding: const EdgeInsets.all(15),
          borderRadius: BorderRadius.circular(32),
          border: const BorderSide(color: kgreen, width: 1),
          dropdownButtonColor: kwhite,
          onChanged: (newValue) {},
          items: ['Laki-laki', 'Perempuan']
              .map((value) => DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
        ),
      ),
    );
  }
}