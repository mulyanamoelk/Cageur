import 'package:flutter/material.dart';
import 'package:sistem_antrian/pages/bottom_navigation_bar/navigation.dart';
import 'package:sistem_antrian/pages/jadwal_page/atur_jadwal.dart';
import 'package:sistem_antrian/pages/notifications/notification_page.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';

import '../../../styles/constrans.dart';
import '../../../widget/custom_button.dart';

class ButtonBooking extends StatelessWidget {
  const ButtonBooking({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 156,
            height: 56,
            decoration: BoxDecoration(color: kwhite),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Kembali',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kgreyBack),
                )),
          ),
          custom_button(
            textcolors: kwhite,
            warna: kgreen,
            width: 156,
            text: 'Simpan',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConvexNavigationBar()));
              }
            },
          ),
        ],
      ),
    );
  }

  _AlertSucces() {
    return Dialog(
      insetPadding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
          side: BorderSide(color: kgrey, width: 1)),
      child: Column(
        children: [],
      ),
    );
  }
}
