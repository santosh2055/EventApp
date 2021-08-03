import 'package:flutter/material.dart';
import 'package:task/Component/Cards/EventDetails1.dart';
import 'package:task/Component/buildAppbar.dart';
import 'package:task/Component/buildBootmBar.dart';

class SecondScreen extends StatefulWidget {
  static const routeName = '/sceond_screen';
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              EventDetails1(),
              ],
          ),
        ),
        bottomNavigationBar: buildBottmBar(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
