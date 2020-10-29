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
  final double _borderRadiusFactor = 0.01;
  final double _boxShadowSpreadRadius = 2.0;
  final double _boxShadowblurRadius = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.maxHeight * _bottonMenuPaddingFactor),
      color: MyColors.darkGrey,

      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * _borderRadiusFactor)),
            color: MyColors.lightGrey,
            boxShadow: [
              BoxShadow(
                color: MyColors.darkBlue,
                spreadRadius: _boxShadowSpreadRadius,
                blurRadius: _boxShadowblurRadius,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(widget.maxWidth * _borderRadiusFactor),
            child: Column(
              children: [
                Container(
                  height: widget.maxHeight * 0.08,
                  width: widget.maxWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                  ),
                  child: Center(
                    child: Text(
                      "Bom voar",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyColors.darkGrey
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: widget.maxHeight * 0.02,
                ),
              ],
            ),
          )
      ),
    );
  }
}
