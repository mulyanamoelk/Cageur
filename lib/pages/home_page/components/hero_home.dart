import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/details_page/details_page.dart';
import 'package:sistem_antrian/styles/constrans.dart';

class Hero_Home extends StatelessWidget {
  const Hero_Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          bottom: 80,
        ),
        child: Stack(
          children: [
            Container(
              width: 334,
              height: 193,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/janji.png'))),
            ),
            Positioned(
                bottom: 30,
                left: 10,
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: kgreen,
                            borderRadius: BorderRadius.circular(32)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailPage()));
                            },
                            child: Text(
                              'Selengkapnya',
                              style: TextStyle(
                                  color: kwhite, fontWeight: FontWeight.bold),
                            )))
                  ],
                ))
          ],
        ));
  }
}
