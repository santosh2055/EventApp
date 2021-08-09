import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/constant.dart';

class Timeperiod extends StatefulWidget {
  @override
  _TimeperiodState createState() => _TimeperiodState();
}
class _TimeperiodState extends State<Timeperiod> {
  var _occurance = [
    '1',
    '2',
    '3',
    '4',
    '5',
    
  ];
  var _isSelected = '3';
  @override
  Widget build(BuildContext context) {
    return
     Container(
      decoration: kDecoration1,
      height: 32,
      width: 55,
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SvgPicture.asset(
                  'assets/icons/blacksuffix.svg',
                  height: 6,
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
                  child: Text(valueItem,style: knormaltext,),
                );
              }).toList(),
            ),
        ),
      ),
    );
  }
}
