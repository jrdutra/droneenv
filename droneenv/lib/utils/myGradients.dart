import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';


abstract class MyGradients {

  static Gradient greenGradient = LinearGradient(
      colors: [
        Color(0xFFbfd255),
        Color(0xFF8eb92a),
        Color(0xFF72aa00),
        Color(0xFF9ecb2d),
      ],
      stops: [0.0, 0.49, 0.50, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );

  static Gradient yellowGradient = LinearGradient(
      colors: [
        Color(0xFFfff04d),
        Color(0xFFffec1f),
        Color(0xFFe8d502),
        Color(0xFFffec17),
      ],
      stops: [0.0, 0.49, 0.50, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );

  static Gradient redGradient = LinearGradient(
      colors: [
        Color(0xFFff5454),
        Color(0xFFff1c1c),
        Color(0xFFd90b0b),
        Color(0xFFff2121),
      ],
      stops: [0.0, 0.49, 0.50, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );

  static Gradient blueGradient = LinearGradient(
      colors: [
        Color(0xFF5468ff),
        Color(0xFF1f39ff),
        Color(0xFF0921d9),
        Color(0xFF1e38fc),
      ],
      stops: [0.0, 0.49, 0.50, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );



}