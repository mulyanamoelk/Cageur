import 'package:flutter/material.dart';

import '../../../styles/constrans.dart';

class Title_Recomm extends StatelessWidget {
  const Title_Recomm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended dokter',
            style: TextStyle(
                color: kblack, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
