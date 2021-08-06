import 'package:flutter/material.dart';
import 'package:task/Component/Cards/payment.dart';
import 'package:task/Component/buildAppbar.dart';
import 'package:task/Component/buildBootmBar.dart';

class ThirdScreen extends StatefulWidget {
  static const routeName = '/third_screen';

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5),
              PaymentCard()
            ],
          ),
        ),
        bottomNavigationBar: buildBottmBar(),
      ),
    );
  }
}
