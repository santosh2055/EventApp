import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

class Days extends StatefulWidget {
  @override
  _DaysState createState() => _DaysState();
}
class _DaysState extends State<Days> {
   var _occurance = [
    'Days',
    'Monts',
    'Year',
  ];
  var _isSelected = 'Days';
  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: kDecoration1,
      height: 40,
      width: 85,
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SvgPicture.asset(
                  'assets/icons/blacksuffix.svg',
                  height: 10,
                ),
              ),
              value: _isSelected,
              onChanged: (newValue) {
                setState(() {
                  _isSelected = newValue.toString();
                });
              },
              items: _occurance.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
        ),
      ),
    );
  }
}