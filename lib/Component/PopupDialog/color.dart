import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(100)),
          height: 20,
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(100)),
          height: 20,
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(100)),
          height: 20,
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(100)),
          height: 20,
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(100)),
          height: 20,
          width: 20,
        )
      ],
    );
  }
}
