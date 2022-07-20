import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/home_page/components/hero_home.dart';
import 'package:sistem_antrian/pages/home_page/components/item_category_home.dart';
import 'package:sistem_antrian/pages/home_page/components/item_promo_home.dart';
import 'package:sistem_antrian/pages/home_page/components/item_rs_home.dart';
import 'package:sistem_antrian/pages/home_page/components/section_title_home.dart';
import 'package:sistem_antrian/pages/home_page/components/title_category_home.dart';
import 'package:sistem_antrian/pages/home_page/components/title_promo_home.dart';

import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class body_home extends StatelessWidget {
  const body_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        section_title_home(),
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Item_Rs_Home(),
              title_category_home(),
              kategori_specialis(),
              Title_Promo_Home(),
              promo_menarik(),
              SizedBox(
                height: 30,
              ),
              Hero_Home()
            ],
          ),
        ))
      ],
    ));
  }
}
