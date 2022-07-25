import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

import '../../../styles/constrans.dart';

class FormTtl extends StatefulWidget {
  const FormTtl({Key? key}) : super(key: key);

  @override
  State<FormTtl> createState() => _FormTtlState();
}

class _FormTtlState extends State<FormTtl> {
  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: DateTimeField(
        decoration: InputDecoration(
          hintText: 'Tanggal Lahir',
          prefixIcon: const Icon(
            Icons.calendar_month_outlined,
            color: kgreen,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: kgrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: kgreen)),
        ),
        format: format,
        onShowPicker: (context, currentValue) async {
          final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
          if (date != null) {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            return DateTimeField.combine(date, time);
          } else {
            return currentValue;
          }
        },
      ),
    );
  }
}
