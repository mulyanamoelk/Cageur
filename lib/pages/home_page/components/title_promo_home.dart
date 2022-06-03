import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class Title_Promo_Home extends StatelessWidget {
  const Title_Promo_Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Promo menarik',
            style: font_sub_title_home,
          ),
        ],
      ),
    );
  }
}
