
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'dart:io';

class WeatherForecast extends StatefulWidget {
  @override
  _WeatherForecastState createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {

  double _contentOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        curve: Curves.fastOutSlowIn,
        opacity: _contentOpacity,
        duration: Duration(milliseconds: 500),
        child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Conteúdo 2",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      print("Botao 2 apertado");
                    },
                    color: MyColors.lightBlue,
                    child: Text("Meu botão"),
                  )
                ],
              ),
            )
        )
    );
  }
}
