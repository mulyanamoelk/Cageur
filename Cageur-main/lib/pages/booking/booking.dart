import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/booking/components/body_booking.dart';

class Booking_Page extends StatelessWidget {
  const Booking_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Booking(),
    );
  }
}
