import 'package:flutter/material.dart';
import 'package:droneenv/screens/home/mainContent/weatherNow.dart';
import 'package:droneenv/screens/home/mainContent/weatherForecast.dart';
import 'dart:io';

class MainContent extends ChangeNotifier{

  int _currentIndex = 0;

  List _mainScreens = [
    WeatherNow(),
    WeatherForecast()
  ];

  Widget get mainScreen => _mainScreens[_currentIndex];

  void setCurrentIndex(int index) {

    this._currentIndex = index;

    notifyListeners();
  }

}
