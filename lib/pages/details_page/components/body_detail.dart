import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/details_page/components/hero_detail.dart';
import 'package:sistem_antrian/pages/details_page/components/section_empat.dart';
import 'package:sistem_antrian/pages/details_page/components/section_kedua.dart';
import 'package:sistem_antrian/pages/details_page/components/section_tentang.dart';
import 'package:sistem_antrian/pages/details_page/components/section_tiga.dart';
import 'package:sistem_antrian/pages/details_page/components/title_tentang.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';

class Body_Detail_Page extends StatelessWidget {
  const Body_Detail_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Hero_Details(),
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Section_Kedua(),
              SizedBox(
                height: 20,
              ),
              Section_Tiga(),
              SizedBox(
                height: 30,
              ),
              Section_Empat(),
              SizedBox(
                height: 10,
              ),
              Title_Tentang(),
              SizedBox(
                height: 20,
              ),
              Section_Tentang()
            ],
          ),
        ))
      ],
    );
  }
}
