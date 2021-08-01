import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../constant.dart';
import '../Dropdown/Category.dart';
import '../Dropdown/Occurance.dart';
import '../Dropdown/Time_period1.dart';
import '../Dropdown/Time_period2.dart';
import '../PopupDialog/Color_picker.dart';
import '../PopupDialog/Time_picker.dart';

class Card1 extends StatefulWidget {
  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  DateTime? date;
  final dateformate = DateFormat('dd-MMM-yyyy');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 430,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 7, right: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'About Your Event',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Event Name',
                        hintStyle:
                            TextStyle(color: Colors.black26, fontSize: 18),
                        labelText: 'Add Title',
                        labelStyle: ktextstyle1),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Start Date', style: ktextstyle1),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                  (date == null)
                                      ? '7 June 2021'
                                      : dateformate.format(date!).toString(),
                                  style: khintextstyle),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2024))
                                      .then((value) {
                                    setState(() {
                                      date = value!;
                                    });
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: SvgPicture.asset(
                                    'assets/icons/suffix.svg',
                                    height: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 1,
                            width: 115,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time Period',
                          style: ktextstyle1,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Timeperiod(),
                            SizedBox(
                              width: 5,
                            ),
                            Days()
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Time', style: ktextstyle1),
                          SizedBox(
                            height: 5,
                          ),
                          TimePicker(),
                          Container(
                            height: 1,
                            width: 110,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 35),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/checkbox.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('All Day', style: ktextstyle1)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Time Zone', style: ktextstyle1),
                    OccuranceDropDown(),
                  ],
                ),
                SizedBox(height: 30),
                Text('Category', style: ktextstyle1),
                Row(
                  children: [
                    CategoryDropDown(),
                    SizedBox(width: 30),
                    ColorPopup(),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Blue', style: ktextstyle1)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


