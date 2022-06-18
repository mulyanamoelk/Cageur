import 'package:flutter/material.dart';

class TitleForm extends StatelessWidget {
  const TitleForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informasi Personal',
            style: TextStyle(
                color: Color(0XFF114B5F),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
