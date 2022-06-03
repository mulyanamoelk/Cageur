import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/home_page/components/body_home.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kwhite,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kpurple,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined, color: kpurple))
        ],
      ),
      body: body_home(),
    );
  }
}
