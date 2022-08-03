import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../styles/constrans.dart';

class Section_Kedua extends StatelessWidget {
  const Section_Kedua({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ' Klinik Corner \n RSIH ',
            style: TextStyle(
                color: kblack, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  child: ImageIcon(
                      AssetImage(
                        'assets/images/location.png',
                      ),
                      color: kgreen),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 110,
                  height: 22,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: kgreen,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
