import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';

class OccuranceDropDown extends StatefulWidget {
  @override
  _OccuranceDropDownState createState() => _OccuranceDropDownState();
}

class _OccuranceDropDownState extends State<OccuranceDropDown> {
  var _occurance = [
    'Doesn\'t repeat',
    'Daily',
    'Weekly on a day',
    'Monthly on a day',
    'Annualy',
    'Every weekday'
  ];
  var _isSelected = 'Doesn\'t repeat';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDecoration1,
      height: 40,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            icon: SvgPicture.asset(
              'assets/icons/blacksuffix.svg',
              height: 10,
            ),
            value: _isSelected,
            onChanged: (newValue) {
              setState(() {
                this._isSelected = newValue.toString();
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
