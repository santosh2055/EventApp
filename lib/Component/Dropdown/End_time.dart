import 'package:flutter/material.dart';

class EndTime extends StatefulWidget {
  @override
  _EndTimeState createState() => _EndTimeState();
}
class _EndTimeState extends State<EndTime> {
  var _occurance = [
    '5:00 PM',
    '5:30 PM',
    '6:00 PM',
    '7:00 PM',
  ];
  var _isSelected = '5:00 PM';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      iconDisabledColor: Colors.white,
      hint: Text('9:00 AM'),
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
    );
  }
}
