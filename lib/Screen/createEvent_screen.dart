import 'package:flutter/material.dart';
import 'package:task/Component/Cards/createEvent2.dart';
import 'package:task/Component/Cards/createEvent1.dart';
import 'package:task/Component/AppBar/createEvent.dart';
import 'package:task/Component/buildBootmBar.dart';

class CreateEventSreen extends StatefulWidget {

  @override
  _CreateEventSreenState createState() => _CreateEventSreenState();
}

class _CreateEventSreenState extends State<CreateEventSreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Card1(),
              SizedBox(height: 5),
              Card2(),
            ],
          ),
        ),
        bottomNavigationBar: buildBottmBar(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
