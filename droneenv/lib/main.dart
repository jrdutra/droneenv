import 'package:flutter/material.dart';
import 'package:droneenv/screens/home/home.dart';
import 'package:droneenv/utils/myColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: MyColors.darkGrey,
      ),
      home: Home(),
    );
  }
}