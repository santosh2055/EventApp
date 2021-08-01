import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class CategoryDropDown extends StatefulWidget {
  @override
  _CategoryDropDownState createState() => _CategoryDropDownState();
}

class _CategoryDropDownState extends State<CategoryDropDown> {
  var _occurance = [
    'Social',
    'Sports',
    'Education',
    'Culture',
    'Carrer',
    'Entairement'
  ];
  var _isSelected = 'Social';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: SafeArea(
        child: DropdownButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: SvgPicture.asset(
              'assets/icons/suffix.svg',
              height: 12,
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
              child: Text(valueItem,style: khintextstyle),
            );
          }).toList(),
        ),
      ),
    );
  }
}
