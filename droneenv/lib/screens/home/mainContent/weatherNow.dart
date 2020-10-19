
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'dart:io';

class WeatherNow extends StatefulWidget {

  WeatherNow({Key key}) : super(key: key);

  @override
  _WeatherNowState createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {

  double _contentOpacity = 1;

  @override
  Widget build(BuildContext context) {
    _contentOpacity = 1;
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
