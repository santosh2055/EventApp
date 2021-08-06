import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Screen/third_screen.dart';
import '../../constant.dart';

class EventDetail2 extends StatefulWidget {
  @override
  _EventDetail2State createState() => _EventDetail2State();
}

class _EventDetail2State extends State<EventDetail2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 500,
          width: double.infinity,
          child: Padding(
            padding: kdefultpadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'How to get in touch ?',
                    style: kcardhedingtextstyle,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Email id',
                  style: ktextstyle1,
                ),
                Flexible(
                  child: TextField(
                    cursorHeight: 20,
                    decoration: InputDecoration(
                        hintText: 'xyz@gamil.com', hintStyle: khintextstyle),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Add email',
                  style: ktextstyle1,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Country', style: ktextstyle1),
                        Container(
                          width: 75,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: SvgPicture.asset('assets/icons/blacksuffix.svg'),
                              suffixIconConstraints: BoxConstraints(maxHeight: 30),
                              hintText: '+91',
                              hintStyle: khintextstyle,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: ktextstyle1,
                        ),
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/linkshadow.svg'),
                                    Positioned(
                                      left: 10,
                                      top: 7,
                                      child: SvgPicture.asset(
                                          'assets/icons/phone.svg'),
                                    ),
                                  ],
                                ),
                              ),
                              hintText: '89777789',
                              hintStyle: khintextstyle,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text('Add number', style: ktextstyle1),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Instagram URL',
                                  style: ktextstyle1,
                                ),
                                TextField(
                                    decoration: InputDecoration(
                                        hintText: 'http:xyz.com',
                                        hintStyle: khintextstyle)),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/checkbox.svg'),
                                    SizedBox(width: 5),
                                    Text(
                                      'Save Url for other event',
                                      style: ktextstyle1,
                                    )
                                  ],
                                )
                              ],
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: ktextstyle1,
                                  )),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Ok',
                                  style: kbuttontext,
                                ),
                                style: buttonstyle2,
                              ),
                            ],
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          SvgPicture.asset('assets/icons/addinstabagound.svg'),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 12,
                            child: SvgPicture.asset(
                              'assets/icons/insta.svg',
                              height: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/icons/addinstabagound.svg'),
                        Positioned(
                          left: 0,
                          top: 12,
                          right: 0,
                          child: SvgPicture.asset(
                            'assets/icons/facebook1.svg',
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/icons/addinstabagound.svg'),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 12,
                          child: SvgPicture.asset(
                            'assets/icons/twiter.svg',
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ],
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/circleshadow.svg',
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: SvgPicture.asset(
                            'assets/icons/in.svg',
                            height: 15,
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/icons/addinstabagound.svg'),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 12,
                          child: SvgPicture.asset(
                            'assets/icons/browser.svg',
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    SvgPicture.asset('assets/icons/addinstabagound.svg'),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 12,
                      child: SvgPicture.asset(
                        'assets/icons/bplus.svg',
                        height: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(ThirdScreen.routeName);
                      },
                      child: SvgPicture.asset('assets/icons/Button.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
