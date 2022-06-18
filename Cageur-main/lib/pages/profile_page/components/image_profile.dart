import 'package:flutter/material.dart';

class Image_profile extends StatelessWidget {
  const Image_profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Center(
        child: ClipRRect(
          child: Image.asset(
            'assets/images/jhon.png',
            width: 160,
            height: 160,
          ),
        ),
      ),
    );
  }
}
