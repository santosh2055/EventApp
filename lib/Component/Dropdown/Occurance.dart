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
    'Weekly ',
    'Monthly',
    'Annualy',
    'weekday'
  ];
  var _isSelected = 'Doesn\'t repeat';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDecoration1,
      height: 32,
      width: 145,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 7),
              child: SvgPicture.asset(
                'assets/icons/blacksuffix.svg',
                height: 6,
              ),
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
                child: Text(valueItem,style:knormaltext),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
