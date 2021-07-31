import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:task/Component/Dropdown/Category.dart';
// import 'package:task/Component/Dropdown/End_time.dart';
// import 'package:task/Component/Dropdown/Occurance.dart';
// import 'package:task/Component/Dropdown/Start_time.dart';
// import 'package:task/Component/Dropdown/Time_period1.dart';
import 'package:task/Component/buildAppbar.dart';
import 'package:task/Component/card_first.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildAppbar(context),
              SizedBox(height: 10),
              Column(
                children: [
                  Card1(),
                  Card1(),
                ],
              )
            ],
          ),
        ),
        bottomSheet: Container(
          color: Color(0xf2F9F9F9),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/home.svg'),
              SvgPicture.asset('assets/icons/create new.svg'),
              SvgPicture.asset('assets/icons/eag.svg'),
              SvgPicture.asset('assets/icons/profile.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
