import 'package:flutter/material.dart';
import 'package:droneenv/screens/home.dart';
import 'package:droneenv/utils/enviroment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Enviroment.darkGrey,
      ),
      home: Home(),
    );
  }
}