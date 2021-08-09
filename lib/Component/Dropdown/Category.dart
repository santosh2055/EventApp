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
  var _isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      child: SafeArea(
        child: DropdownButton<String>(
          hint: Text('Social',style: khintextstyle,),
          icon: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: SvgPicture.asset(
              'assets/icons/suffix.svg',
              height: 6,
            ),
          ),
          value: _isSelected,
          style:  knormaltext,
          onChanged: (String? newValue) {
            setState(
              () {
                _isSelected = newValue.toString();
              },
            );
          },
          items: _occurance.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Container(
                width: 99,
                child: Text(valueItem),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
