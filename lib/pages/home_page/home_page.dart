import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/pages/home_page/components/body_home.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

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
              onPressed: () {
                openRatting(context);
              },
              icon: Icon(Icons.favorite_border_outlined, color: kpurple))
        ],
      ),
      body: body_home(),
    );
  }

  openRatting(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: AlertRatting(),
          );
        });
  }
}

class AlertRatting extends StatelessWidget {
  const AlertRatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: max(
        300,
        MediaQuery.of(context).size.height * .3,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Apakah Anda Menyukai aplikasi ini ?',
              style: TextStyle(color: kgreyText, fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            RatingBar.builder(
                itemCount: 5,
                direction: Axis.horizontal,
                initialRating: 4,
                minRating: 1,
                itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                onRatingUpdate: (rating) {
                  print(rating);
                }),
            SizedBox(
              height: 15,
            ),
            custom_button(
                text: 'Submit',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ConvexNavigationBar()));
                },
                warna: kwhite,
                textcolors: kgrey)
          ],
        ),
      ),
    );
  }
}
