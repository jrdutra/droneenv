import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:droneenv/utils/myGradients.dart';
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

  final double _bottonMenuPaddingFactor = 0.01;
  final double _borderRadiusFactor = 0.02;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: widget.maxHeight * 0.08,
                  width: widget.maxWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                      gradient: MyGradients.redGradient,
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.darkRed,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Não é bom voar",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyColors.grey
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: widget.maxHeight * 0.06,
                ),
                Text(
                    "Clima agora",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                ),
                SizedBox(
                  height: widget.maxHeight * 0.02,
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                        color: MyColors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.darkGrey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      padding: EdgeInsets.only(right: widget.maxWidth * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 6),
                            child: Text(
                              "Temperatura",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.darkWhite
                              ),
                            ),
                          ),
                          Container(
                            height: widget.maxHeight * 0.05,
                            width: widget.maxWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                              gradient: MyGradients.greenGradient,
                            ),
                            child: Center(
                              child: Text(
                                "25°",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: widget.maxHeight * 0.02,
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                        color: MyColors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.darkGrey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      padding: EdgeInsets.only(right: widget.maxWidth * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 6),
                            child: Text(
                              "Ventos",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.darkWhite
                              ),
                            ),
                          ),
                          Container(
                            height: widget.maxHeight * 0.05,
                            width: widget.maxWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                              gradient: MyGradients.redGradient,
                            ),
                            child: Center(
                              child: Text(
                                "30 km/h",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: widget.maxHeight * 0.02,
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                        color: MyColors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.darkGrey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      padding: EdgeInsets.only(right: widget.maxWidth * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 6),
                            child: Text(
                              "Visibilidade",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.darkWhite
                              ),
                            ),
                          ),
                          Container(
                            height: widget.maxHeight * 0.05,
                            width: widget.maxWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                              gradient: MyGradients.greenGradient,
                            ),
                            child: Center(
                              child: Text(
                                "10 km",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: widget.maxHeight * 0.02,
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                        color: MyColors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.darkGrey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      padding: EdgeInsets.only(right: widget.maxWidth * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 6),
                            child: Text(
                              "Precipitação",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.darkWhite
                              ),
                            ),
                          ),
                          Container(
                            height: widget.maxHeight * 0.05,
                            width: widget.maxWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                              gradient: MyGradients.yellowGradient,
                            ),
                            child: Center(
                              child: Text(
                                "40%",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: widget.maxHeight * 0.02,
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                        color: MyColors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.darkGrey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: widget.maxHeight * 0.06,
                      width: widget.maxWidth * 0.8,
                      padding: EdgeInsets.only(right: widget.maxWidth * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 6),
                            child: Text(
                              "Satélites Visíveis",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.darkWhite
                              ),
                            ),
                          ),
                          Container(
                            height: widget.maxHeight * 0.05,
                            width: widget.maxWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * 0.02)),
                              gradient: MyGradients.greenGradient,
                            ),
                            child: Center(
                              child: Text(
                                "14",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ),
    );
  }
}
