import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class title_category_home extends StatelessWidget {
  const title_category_home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'kategori specialis',
            style: font_sub_title_home,
          ),
        ],
      ),
    );
  }
}
