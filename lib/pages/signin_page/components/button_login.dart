import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/booking/booking.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/pages/jadwal_page/atur_jadwal.dart';
import 'package:sistem_antrian/pages/search_page/search_page.dart';
import 'package:sistem_antrian/pages/signup_page/signup.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: custom_button(
          textcolors: kwhite,
          text: 'Login',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BookingPage()));
            }
          },
          warna: kgreen),
    );
  }
}
