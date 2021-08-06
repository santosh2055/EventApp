import 'package:flutter/material.dart';
import 'package:task/Screen/first_screen.dart';
import 'package:task/Screen/second_screen.dart';
import 'package:task/Screen/third_screen.dart';
import 'Screen/first_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      routes:{
          SecondScreen.routeName: (ctx) => SecondScreen(),
          ThirdScreen.routeName:(ctx)=>ThirdScreen()
      }
    );
  }
}


