import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/booking/components/body_booking.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBooking(),
    );
  }
}
