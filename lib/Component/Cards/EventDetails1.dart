import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant.dart';

class EventDetails1 extends StatefulWidget {
  @override
  _EventDetails1State createState() => _EventDetails1State();
}

class _EventDetails1State extends State<EventDetails1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 450,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 5, left: 7, right: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'More About Your Event ?',
                    style: TextStyle(fontSize: 24),
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
                SizedBox(height: 10,),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/linksuffix.svg'),
                    SizedBox(width: 5),
                    SvgPicture.asset('assets/icons/emoj.svg'),
                    SizedBox(width: 5),
                    SvgPicture.asset('assets/icons/image.svg'),
                    SizedBox(width: 10),
                    Text('Text formate',style: ktextstyle1,),
                    SizedBox(width: 70),
                    Text('0/2600',style: khintextstyle,)
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: kDecoration1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/blackplus.svg'),
                      SizedBox(width: 5),
                      Text('Add Image ',style: ktextstyle1,)
                    ],
                  ),
                ),
                SizedBox(height: 80),
                Text('Alerts')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
