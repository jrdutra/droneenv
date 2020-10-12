import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.2,
                  color: Colors.red,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.6,
                  color: Colors.blue,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.2,
                  color: Colors.yellow,
                ),
              ],
            );
          },
        )
      )
    );
  }
}
