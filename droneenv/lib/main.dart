import 'package:flutter/material.dart';
import 'package:droneenv/screens/home/home.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:provider/provider.dart';
import 'package:droneenv/screens/home/mainContent/mainContent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainContent(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: MyColors.darkGrey,
        ),
        home: Home(),
      ),
    );
  }
}