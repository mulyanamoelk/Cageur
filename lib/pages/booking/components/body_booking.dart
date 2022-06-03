import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';
import 'package:sistem_antrian/pages/booking/components/button_booking.dart';
import 'package:sistem_antrian/pages/booking/components/dropdown.dart';
import 'package:sistem_antrian/pages/booking/components/form_berat_badan.dart';
import 'package:sistem_antrian/pages/booking/components/form_email.dart';
import 'package:sistem_antrian/pages/booking/components/form_gender.dart';
import 'package:sistem_antrian/pages/booking/components/form_nik.dart';
import 'package:sistem_antrian/pages/booking/components/form_penyakit.dart';
import 'package:sistem_antrian/pages/booking/components/form_person.dart';
import 'package:sistem_antrian/pages/booking/components/form_phone.dart';
import 'package:sistem_antrian/pages/booking/components/form_tinggi_badan.dart';
import 'package:sistem_antrian/pages/booking/components/form_ttl.dart';
import 'package:sistem_antrian/pages/booking/components/title_booking.dart';
import 'package:sistem_antrian/pages/booking/components/title_form.dart';
import 'package:sistem_antrian/pages/booking/components/toggle_booking.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../styles/constrans.dart';

class Body_Booking extends StatelessWidget {
  const Body_Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Title_Booking(),
        Toggle_Booking(),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              DropDownPribadi(),
              TitleForm(),
              FormNik(),
              FormPerson(),
              FormPhone(),
              FormEmail(),
              FormGender(),
              FormTtl(),
              FormTb(),
              FormBb(),
              FormPenyakit(),
              ButtonBooking()
            ],
          ),
        ))
      ],
    ));
  }
}
