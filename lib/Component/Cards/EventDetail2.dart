import 'package:flutter/material.dart';

class EventDetail2 extends StatefulWidget {
  @override
  _EventDetail2State createState() => _EventDetail2State();
}

class _EventDetail2State extends State<EventDetail2> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 450,
      width: double.infinity,
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
        ],
      ),
    );
  }
}
