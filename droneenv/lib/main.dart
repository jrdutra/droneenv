import 'package:flutter/material.dart';
import 'package:droneenv/screens/home.dart';
import 'package:droneenv/utils/myColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyColors myColors = MyColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: myColors.darkGrey,
      ),
      home: Home(),
    );
  }
}