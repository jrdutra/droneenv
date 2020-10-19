
import 'package:droneenv/screens/home/mainContent/mainContent.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'dart:io';

import 'package:provider/provider.dart';

class WeatherNow extends StatefulWidget {

  WeatherNow({Key key}) : super(key: key);

  @override
  _WeatherNowState createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {

  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        curve: Curves.fastOutSlowIn,
        opacity: _opacity,
        duration: Duration(milliseconds: 1000),
        child: Container(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Conteúdo 1",
                      style: TextStyle(
                          fontSize: 30
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        print("Botão 1 apertado..");
                      },
                      color: MyColors.lightBlue,
                      child: Text("Meu botão 1"),
                    )
                  ],
                )
            )
        )
    );
  }
}
