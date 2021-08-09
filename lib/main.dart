import 'package:flutter/material.dart';
import 'package:task/Screen/createEvent_screen.dart';
import 'package:task/Screen/eventDetail_screen.dart';
import 'package:task/Screen/payment_screen.dart';
import 'package:task/Screen/registration_screen.dart';
import 'Screen/createEvent_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateEventSreen(),
      debugShowCheckedModeBanner: false,
      routes:{
          EventDetailScreen.routeName: (ctx) => EventDetailScreen(),
          PaymentScreen.routeName:(ctx)=>PaymentScreen(),
          RegistrationScreen.routeName:(ctx)=>RegistrationScreen()
      }
    );
  }
}


