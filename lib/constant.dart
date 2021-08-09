import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic ktextstyle1 = GoogleFonts.poppins(
    textStyle: TextStyle(color: Color(0xff666666), fontSize: 14),
    fontWeight: FontWeight.w500);

dynamic knormaltext = GoogleFonts.poppins(
    textStyle: TextStyle(color: Color(0xff666666), fontSize: 14),
    fontWeight: FontWeight.normal);

dynamic kDecoration1 = BoxDecoration(
    color: Color(0xffF0F0F0), borderRadius: BorderRadius.circular(5));

dynamic khintextstyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: 14, color: Colors.black26, fontWeight: FontWeight.normal));

dynamic kbuttontext = GoogleFonts.poppins(
  textStyle: TextStyle(color: Color(0xff7F71D9), fontSize: 14,fontWeight: FontWeight.w500),
);
dynamic kbuttontext1 = GoogleFonts.poppins(
  textStyle: TextStyle(color: Color(0xff666666), fontSize: 14),
);


dynamic buttonstyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(
    Color(0xffFFFFFF),
  ),
);
dynamic buttonstyle2 = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(
    Color(0xffF0F0F0),
  ),
);

const kdefultpadding =
    const EdgeInsets.only(top: 20, bottom: 5, left: 7, right: 7);

dynamic kcardhedingtextstyle = GoogleFonts.poppins(
  textStyle: TextStyle(
      fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xff363636)),
);
