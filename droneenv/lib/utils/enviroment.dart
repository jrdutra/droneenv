import 'package:flutter/material.dart';

class Enviroment {

  static Color lightGrey = Color(0xFF343434);

  static Color darkGrey = Color(0xFF141414);

  static Color lightBlue = Color(0xFF2E78DA);

  static Color darkBlue = Color(0xFF1A62C3);

  static Color lightWhite = Color(0xFFEBEBEB);

  static Color darkWhite = Color(0xFFDFDFDF);

  static LinearGradient lightDarkGrey = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [lightGrey, darkGrey]
  );

}