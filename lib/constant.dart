import 'package:flutter/material.dart';

const ktextstyle1 = TextStyle(color: Color(0xff666666), fontSize: 18);

dynamic kDecoration1 = BoxDecoration(
    color: Color(0xffF0F0F0), borderRadius: BorderRadius.circular(5));

const khintextstyle = TextStyle(fontSize: 17, color: Colors.black26);

const kbuttontext = TextStyle(color: Color(0xff7F71D9), fontSize: 18);

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