import 'package:flutter/material.dart';

class section_image_logo extends StatelessWidget {
  const section_image_logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo_cageur.png',
            width: 82,
            height: 90,
          ),
        ],
      ),
    );
  }
}
