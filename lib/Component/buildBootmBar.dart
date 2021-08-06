import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class buildBottmBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: Color(0xf2F9F9F9),
      border: Border.all(
        width: 0.5,
        color: Color(0xf2666666),
      ),
    ),
    height: 55,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/icons/home.svg'),
        SvgPicture.asset('assets/icons/create new.svg'),
        SvgPicture.asset('assets/icons/eag.svg'),
        SvgPicture.asset('assets/icons/profile.svg'),
      ],
    ),
        );
  }
}
