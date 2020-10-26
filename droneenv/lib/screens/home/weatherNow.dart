import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';
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
  final double _bottonMenuPaddingFactor = 0.02;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            right: widget.maxWidth * _bottonMenuPaddingFactor,
            left: widget.maxWidth * _bottonMenuPaddingFactor),
        color: MyColors.darkGrey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: widget.maxHeight * 0.01,
                width: widget.maxWidth,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tempo agora",
                    style: TextStyle(fontSize: 30, fontFamily: 'Blinker'),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.location_on,
                    size: 14,
                  ),
                  Container(
                    child: Text(
                      "São José do Vale do Rio Preto",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: widget.maxHeight * 0.03,
                width: widget.maxWidth,
              ),
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                    height: 80,
                    width: 120,
                    color: MyColors.darkGrey,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 6,
                          color: MyColors.darkBlue,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0, top: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child:Text(
                                  "Temperatura",
                                  style: TextStyle(
                                      fontFamily: 'Roboto'
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 29,
                              ),
                              Row(
                                children: [
                                  Icon(
                                      MdiIcons.thermometer
                                  ),
                                  Text("25 ºC")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ]));
  }
}
