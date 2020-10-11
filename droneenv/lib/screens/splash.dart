import 'package:flutter/material.dart';
import 'package:droneenv/screens/home.dart';
import 'package:droneenv/utils/enviroment.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new Home(),
      image: new Image.asset('assets/images/logo-light.png'),
      photoSize: 80.0,
      loaderColor: Enviroment.darkBlue,
      gradientBackground: Enviroment.lightDarkGrey
    );
  }
}