import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/search_page/components/listview_dokter.dart';
import 'package:sistem_antrian/pages/search_page/components/item_dokter.dart';
import 'package:sistem_antrian/pages/search_page/components/search_form.dart';
import 'package:sistem_antrian/pages/search_page/components/section_specialis.dart';
import 'package:sistem_antrian/pages/search_page/components/title_klinik_search.dart';
import 'package:sistem_antrian/pages/search_page/components/title_recom.dart';
import 'package:sistem_antrian/pages/search_page/components/title_search.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/styles/custom_font_style.dart';
import 'package:sistem_antrian/widget/custom_form.dart';

class Body_Search extends StatelessWidget {
  const Body_Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      Title_Search(),
      Search_Form(),
      Title_klinik_Search(),
      Section_Specialis(),
      Title_Recomm(),
      Expanded(child: Listview_Dokter())
    ]));
  }
}
