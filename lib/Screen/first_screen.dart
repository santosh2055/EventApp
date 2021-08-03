import 'package:flutter/material.dart';
import 'package:task/Component/Cards/createEvent2.dart';
import 'package:task/Component/Cards/createEvent1.dart';
import 'package:task/Component/buildAppbar.dart';
import 'package:task/Component/buildBootmBar.dart';

class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card1(),
              Card2(),
            ],
          ),
        ),
          bottomNavigationBar: 
          buildBottmBar(),
          resizeToAvoidBottomInset: false,
      ),
    );
  }
}

