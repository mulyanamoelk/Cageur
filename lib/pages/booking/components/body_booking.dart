import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';

import 'package:sistem_antrian/pages/booking/components/button_booking.dart';
import 'package:sistem_antrian/pages/booking/components/dropdown_pribadi.dart';
import 'package:sistem_antrian/pages/booking/components/form_berat_badan.dart';
import 'package:sistem_antrian/pages/booking/components/form_email.dart';
import 'package:sistem_antrian/pages/booking/components/dropdown_gender.dart';
import 'package:sistem_antrian/pages/booking/components/form_nik.dart';
import 'package:sistem_antrian/pages/booking/components/form_penyakit.dart';
import 'package:sistem_antrian/pages/booking/components/form_person.dart';
import 'package:sistem_antrian/pages/booking/components/form_phone.dart';
import 'package:sistem_antrian/pages/booking/components/form_tinggi_badan.dart';
import 'package:sistem_antrian/pages/booking/components/form_ttl.dart';
import 'package:sistem_antrian/pages/booking/components/title_booking.dart';
import 'package:sistem_antrian/pages/booking/components/title_form.dart';
import 'package:sistem_antrian/pages/booking/components/toggle_booking.dart';
import 'package:sistem_antrian/pages/signin_page/signin_page.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';
import 'package:sistem_antrian/widget/custom_password.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../styles/constrans.dart';

class BodyBooking extends StatefulWidget {
  const BodyBooking({Key? key}) : super(key: key);

  @override
  State<BodyBooking> createState() => _BodyBookingState();
}

class _BodyBookingState extends State<BodyBooking> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nikController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _nikController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kgreyBack,
            )),
      ),
      body: ListView(
        children: [
          Container(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Title_Booking(),
                    ToggleBooking(),
                    DropdownPribadi(),
                    TitleForm(),
                    FormNik(),
                    FormPerson(),
                    FormPhone(),
                    FormEmail(),
                    DropdownGender(),
                    FormTtl(),
                    FormTb(),
                    FormBb(),
                    FormPenyakit(),
                    ButtonBooking(formKey: _formKey),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
