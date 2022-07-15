import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/details_page/components/body_detail.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Detail_Page(),
    );
  }
}
