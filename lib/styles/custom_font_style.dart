import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sistem_antrian/styles/constrans.dart';

TextStyle get title_text {
  return TextStyle(fontSize: 24, color: kblack, fontWeight: FontWeight.bold);
}

TextStyle get TitleFontVerification {
  return TextStyle(
      color: kpurpleText, fontSize: 22, fontWeight: FontWeight.bold);
}

TextStyle get font_sub_title_home {
  return TextStyle(fontSize: 16, color: kblack);
}

TextStyle get font_sub_details {
  return TextStyle(color: kgreyText, fontSize: 16);
}

TextStyle get font_sub_signin {
  return TextStyle(color: kgrey, fontSize: 16);
}

TextStyle get font_pa_signin {
  return TextStyle(
      color: Color(0XFF2E3E5C), fontSize: 15, fontWeight: FontWeight.bold);
}

TextStyle get font_sub_title_notification {
  return TextStyle(
      fontSize: 18, color: kpurpleText, fontWeight: FontWeight.bold);
}
