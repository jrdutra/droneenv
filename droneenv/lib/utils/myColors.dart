import 'package:flutter/material.dart';

class MyColors {

  //Pattern Singleton

  static final MyColors _myColors = MyColors._internal();

  factory MyColors() => _myColors;

  MyColors._internal(); // private constructor

  //Atributes

  Color ultraLightGrey = Color(0xFF545454);

  Color veryLightGrey = Color(0xFF444444);

  Color lightGrey = Color(0xFF343434);

  Color mediumGrey = Color(0xFF242424);

  Color darkGrey = Color(0xFF141414);


  Color veryLightBlue = Color(0xFF5692e1);

  Color lightBlue = Color(0xFF2E78DA);

  Color darkBlue = Color(0xFF1A62C3);

  Color veryDarkBlue = Color(0xFF154e99);


  Color lightCian = Color(0xFF2fc3da);


  Color veryLightWhite = Color(0xFFFFFFFF);

  Color lightWhite = Color(0xFFEBEBEB);

  Color darkWhite = Color(0xFFDFDFDF);

  Color veryDarkWhite = Color(0xFFcfcfcf);




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