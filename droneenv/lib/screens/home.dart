import 'package:flutter/material.dart';
import 'package:droneenv/utils/enviroment.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                  "assets/images/logo-dark.png"
              ),
            )
          ],
        )
      )
    );
  }
}
