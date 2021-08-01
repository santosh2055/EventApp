import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/Component/Cards/card_sceond.dart';
import 'package:task/Component/buildAppbar.dart';
import 'package:task/Component/Cards/card_first.dart';

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
                children: [Card1(), Card2(), Card2()],
              )
            ],
          ),
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(
            color: Color(0xf2F9F9F9),
            border: Border.all(
              width: 0.5,
              color: Color(0xf2666666),
            ),
          ),
          height: 60,
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
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
