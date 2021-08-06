import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

class TimePicker extends StatefulWidget {
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  var _endtime = [
    '5 PM',
    '5:30 PM',
    '6 PM',
    '7 PM',
  ];
  var _isSelectedend = '5 PM';
  var _startime = [
    '9 AM',
    '10 AM',
    '11 AM',
    '12 PM',
  ];
  var _isSelectedstart = '9 AM';
  bool _onselected1 = false;
  bool _onselected2 = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => Dialog(
            backgroundColor: Color(0xffFFFFFF),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 105,
                        child: DropdownButton(
                          hint: Text('9:00 AM'),
                          value: _isSelectedstart,
                          style:
                              _onselected1 == true ? ktextstyle1 : khintextstyle,
                          onChanged: (newValue) {
                            setState(() {
                              _isSelectedstart = newValue.toString();
                              _onselected1 = true;
                            });
                          },
                          items: _startime.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text('To'),
                      SizedBox(width: 12),
                      Container(
                        width: 105,
                        child: DropdownButton(
                          hint: Text('9:00 AM'),
                          value: _isSelectedend,
                          style:
                              _onselected2 == true ? ktextstyle1 : khintextstyle,
                          onChanged: (newValue) {
                            setState(() {
                              this._isSelectedend = newValue.toString();
                              _onselected2 = true;
                            });
                          },
                          items: _endtime.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Clear',
                          style: ktextstyle1,
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Apply'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          Text(
              '$_isSelectedstart',
              style: _onselected1 == true ? ktextstyle1 : khintextstyle),
          SizedBox(width: 2),
          Text('-'),
          SizedBox(width: 2),
          Text('$_isSelectedend',
              style: _onselected2 == true ? ktextstyle1 : khintextstyle),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: SvgPicture.asset(
              'assets/icons/suffix.svg',
              height: 9,
            ),
          ),
        ],
      ),
    );
  }
}
