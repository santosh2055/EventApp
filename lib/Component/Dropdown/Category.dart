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
  bool _onselected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: SafeArea(
        child: DropdownButton<String>(
          icon: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: SvgPicture.asset(
              'assets/icons/suffix.svg',
              height: 12,
            ),
          ),
          value: _isSelected,
          style:_onselected==true? ktextstyle1: khintextstyle,
          onChanged: (String ?newValue) {
            setState(() {
              _onselected = true;
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
    );
  }
}
