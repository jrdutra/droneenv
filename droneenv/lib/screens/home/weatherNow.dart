import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'dart:io';
import 'package:provider/provider.dart';

class WeatherNow extends StatefulWidget {

  double maxHeight;
  double maxWidth;
  
  WeatherNow(this.maxHeight, this.maxWidth, {Key key}) : super(key: key);

  @override
  _WeatherNowState createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {

  List<Color> _colorsBlue = [MyColors.veryDarkBlue ,MyColors.veryLightBlue];

  List<Color> _colorsGreen = [Colors.green , Colors.lightGreen[500]];
  List<Color> _colorsRed = [Colors.red , Colors.redAccent];
  List<Color> _colorsOrange = [Colors.deepOrange , Colors.orange];

  List<double> _stops = [0.0, 1.0];

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
          child: Padding(
            padding: EdgeInsets.all(widget.maxWidth * _vorderRadiusFactor),
            child: Column(
              children: [
                Container(
                  height: widget.maxHeight * 0.1,
                  width: widget.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                      gradient: LinearGradient(
                        colors: _colorsBlue,
                        stops: _stops,
                      )
                  ),
                  child: Center(
                    child: Text(
                        "Bom para voar",
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                          color: MyColors.veryDarkWhite
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: widget.maxHeight * 0.03,
                ),
                Text(
                  "Tempo agora",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: MyColors.veryDarkWhite
                  ),
                ),
                SizedBox(
                  height: widget.maxHeight * 0.03,
                ),
                Wrap(
                  spacing: widget.maxHeight * 0.01,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: widget.maxHeight * 0.1,
                      width: widget.maxHeight * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                          gradient: LinearGradient(
                            colors: _colorsGreen,
                            stops: _stops,
                          )
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: MyColors.veryDarkWhite
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
    );
  }
}
