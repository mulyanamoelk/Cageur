import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/home_page/home_page.dart';
import 'package:sistem_antrian/pages/search_page/components/body_search.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class Search_Page extends StatelessWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kwhite,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kgrey,
            )),
      ),
      body: Body_Search(),
    );
  }
}
