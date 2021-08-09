import 'package:flutter/material.dart';
import 'package:task/Component/AppBar/paymenttAppbar.dart';
import 'package:task/Component/Cards/payment.dart';
import 'package:task/Component/buildBootmBar.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = '/payment_screen';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppbar2(),
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
