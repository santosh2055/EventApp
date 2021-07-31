import 'package:flutter/material.dart';

class StartTime extends StatefulWidget {
  
  @override
  _StartTimeState createState() => _StartTimeState();
}

class _StartTimeState extends State<StartTime> {
  var _occurance = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
  ];
  var _isSelected = '9:00 AM';
  var val = '';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      iconDisabledColor: Colors.white,
      hint: Text('9:00 AM'),
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
    );
  }
}
