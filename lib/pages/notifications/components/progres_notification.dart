import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';

import '../../../styles/constrans.dart';

class progresNotification extends StatelessWidget {
  const progresNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
      child: GFProgressBar(
        circleStartAngle: 10,
        backgroundColor: kgrey,
        progressBarColor: kgreen,
        percentage: 0.9,
        lineHeight: 20,
        alignment: MainAxisAlignment.spaceBetween,
        child: const Text(
          '90%',
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        leading: Icon(
          Icons.sentiment_dissatisfied,
          color: korange,
        ),
        trailing: Icon(
          Icons.sentiment_satisfied,
          color: kgreen,
        ),
      ),
    );
  }
}
