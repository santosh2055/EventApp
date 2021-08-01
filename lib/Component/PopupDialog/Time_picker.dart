import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

class TimePicker extends StatelessWidget {
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
                        width: 90,
                        child: TextFormField(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => Dialog(
                                insetPadding:
                                    EdgeInsets.symmetric(horizontal: 100),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Card(
                                        elevation: 0,
                                        child: Text('9:00 AM',style: ktextstyle1,),
                                      ),
                                      SizedBox(height:5),
                                      Card(
                                        elevation: 0,
                                        child: Text('9:15 AM',style: ktextstyle1,),
                                      ),
                                      SizedBox(height:5),
                                      Card(
                                        elevation: 0,
                                        child: Text('9:30 AM',style: ktextstyle1,),
                                      ),
                                      SizedBox(height:5),
                                      Card(
                                        elevation: 0,
                                        child: Text('10:00 AM',style: ktextstyle1,),
                                      ),
                                      SizedBox(height:5),
                                      Card(
                                        elevation: 0,
                                        child: Text('10:30 AM',style: ktextstyle1,),
                                      ),
                                      SizedBox(height:5),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          decoration: InputDecoration(
                              labelText: 'START TIME',
                              labelStyle: TextStyle(
                                color: Color(0xff666666),
                              ),
                              hintText: "9:00Am"),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text('To'),
                      SizedBox(width: 12),
                      Container(
                        width: 90,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'END TIME',
                              labelStyle: TextStyle(
                                  color: Color(0xff666666), fontSize: 15),
                              hintText: "5:00PM"),
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
                        onPressed: () {},
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
            '9 AM',
            style: khintextstyle,
          ),
          SizedBox(width: 2),
          Text('-'),
          SizedBox(width: 2),
          Text('5 PM', style: khintextstyle),
          SizedBox(
            width: 5,
          ),
          SvgPicture.asset(
            'assets/icons/suffix.svg',
            height: 12,
          ),
        ],
      ),
    );
  }
}
