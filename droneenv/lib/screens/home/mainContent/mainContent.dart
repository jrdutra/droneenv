import 'package:flutter/material.dart';
import 'package:droneenv/screens/home/mainContent/weatherNow.dart';
import 'package:droneenv/screens/home/mainContent/weatherForecast.dart';

class MainContent extends StatefulWidget {

  double maxHeight;
  double maxWidth;
  Color color;

  MainContent(this.maxWidth, this.maxHeight, this.color, {Key key}) : super(key : key);

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {

  int index = 0;

  List mainScreens = [
    WeatherNow(),
    WeatherForecast()
  ];

  @override
  Widget build(BuildContext context) {

    index = 0;

    return Container(
        width: widget.maxWidth,
        height: widget.maxHeight * 0.75,
        color: widget.color,
        child: mainScreens[index]
    );
  }
}
