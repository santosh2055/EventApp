import 'package:flutter/material.dart';
import 'package:task/Component/AppBar/detailAppbar.dart';
import 'package:task/Component/Cards/EventDetail2.dart';
import 'package:task/Component/Cards/EventDetails1.dart';
import 'package:task/Component/AppBar/createEvent.dart';
import 'package:task/Component/buildBootmBar.dart';

class EventDetailScreen extends StatefulWidget {
  static const routeName = '/sceond_screen';
  @override
  _EventDetailScreenState createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar1(
        ),
        body: 
        SingleChildScrollView(
          child: Column(
            children: [
              EventDetails1(),
              SizedBox(height: 5),
              EventDetail2()
              ],
          ),
        ),
        bottomNavigationBar: buildBottmBar(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
