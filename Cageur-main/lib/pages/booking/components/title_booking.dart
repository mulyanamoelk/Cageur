import 'package:flutter/material.dart';

class Title_Booking extends StatelessWidget {
  const Title_Booking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 26),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Book An \n Appointment',
            style: TextStyle(
                color: Color(0XFF1A936F),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
