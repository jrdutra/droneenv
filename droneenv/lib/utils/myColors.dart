import 'package:flutter/material.dart';

class MyColors {

  //Pattern Singleton

  static final MyColors _myColors = MyColors._internal();

  factory MyColors() => _myColors;

  MyColors._internal(); // private constructor

  //Atributes

  Color lightGrey = Color(0xFF343434);

  Color darkGrey = Color(0xFF141414);

  Color lightBlue = Color(0xFF2E78DA);

  Color darkBlue = Color(0xFF1A62C3);

  Color lightWhite = Color(0xFFEBEBEB);

  Color darkWhite = Color(0xFFDFDFDF);

  LinearGradient lightDarkGrey = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFF1A62C3),
        const Color(0xFFDFDFDF)
      ],
      tileMode: TileMode.repeated
  );
}