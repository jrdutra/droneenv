
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'dart:io';

class WeatherForecast extends StatefulWidget {

  double maxHeight;
  double maxWidth;

  WeatherForecast(this.maxHeight, this.maxWidth, {Key key}) : super(key: key);

  @override
  _WeatherForecastState createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {

  final double _bottonMenuPaddingFactor = 0.01;
  final double _vorderRadiusFactor = 0.02;
  final double _boxShadowSpreadRadius = 2.0;
  final double _boxShadowblurRadius = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.maxHeight * _bottonMenuPaddingFactor),
      color: MyColors.darkGrey,

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * _vorderRadiusFactor)),
          color: MyColors.lightGrey,
          boxShadow: [
            BoxShadow(
              color: MyColors.darkBlue,
              spreadRadius: _boxShadowSpreadRadius,
              blurRadius: _boxShadowblurRadius,
            )
          ],
        ),
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
      ),
    );
  }
}
