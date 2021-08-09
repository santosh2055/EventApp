import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

class EventDetails1 extends StatefulWidget {
  @override
  _EventDetails1State createState() => _EventDetails1State();
}

class _EventDetails1State extends State<EventDetails1> {
  var _isSelected = 'Email';
  var _isSelected1 = 'Minutes';

  var _items = [
    'Email',
    'Notific',
    'Custom',
  ];
  var _items1 = ['Minutes', 'Hours', 'Days', 'Weeks'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 440,
          width: double.infinity,
          child: Padding(
            padding:kdefultpadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'More About Your Event ?',
                    style: kcardhedingtextstyle,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Event Description',
                  style: ktextstyle1,
                ),
                Flexible(
                  child: TextField(
                    cursorHeight: 20,
                    decoration: InputDecoration(
                        hintText: 'More about the event',
                        hintStyle: khintextstyle),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        SvgPicture.asset('assets/icons/linkshadow.svg'),
                        Positioned(
                          left: 4,
                          top: 3,
                          child:
                              SvgPicture.asset('assets/icons/linksuffix.svg'),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/icons/linkshadow.svg'),
                        Positioned(
                          left: 7,
                          top: 6,
                          child: SvgPicture.asset('assets/icons/emoj.svg'),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/icons/linkshadow.svg'),
                        Positioned(
                          left: 9,
                          top: 9,
                          child: SvgPicture.asset('assets/icons/image.svg'),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Text formate',
                      style: knormaltext,
                    ),
                    SizedBox(width: 40),
                    Text(
                      '0/2600',
                      style: khintextstyle,
                    )
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: kDecoration1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/blackplus.svg'),
                      SizedBox(width: 5),
                      Text(
                        'Add Image ',
                        style: knormaltext,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text('Alerts', style: ktextstyle1),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      decoration: kDecoration1,
                      height: 32,
                      width: 110,
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 6),
                          child: DropdownButton(
                            icon: SvgPicture.asset(
                              'assets/icons/blacksuffix.svg',
                              height: 6,
                            ),
                            value: _isSelected,
                            style: knormaltext,
                            onChanged: (newValue) {
                              setState(() {
                                _isSelected = newValue.toString();
                              });
                            },
                            items: _items.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem,style: knormaltext,),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: kDecoration1,
                      height: 32,
                      width: 40,
                      child: Center(child: Text('30',style: ktextstyle1,)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: kDecoration1,
                      height: 32,
                      width: 100,
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: DropdownButton(
                            icon: SvgPicture.asset(
                              'assets/icons/blacksuffix.svg',
                              height: 6,
                            ),
                            value: _isSelected1,
                            style: knormaltext,
                            onChanged: (newValue) {
                              setState(() {
                                _isSelected1 = newValue.toString();
                              });
                            },
                            items: _items1.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem,style: knormaltext,),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset('assets/icons/cancel.svg'),
                  ],
                ),
                SizedBox(height: 20),
                Text('Add Alart',style: knormaltext,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
