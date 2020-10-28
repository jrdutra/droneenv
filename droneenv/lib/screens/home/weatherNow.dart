import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:droneenv/widgets/dataCard.dart';

class WeatherNow extends StatefulWidget {
  double maxHeight;
  double maxWidth;

  WeatherNow(this.maxHeight, this.maxWidth, {Key key}) : super(key: key);

  @override
  _WeatherNowState createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {


  final double _bottonMenuPaddingFactor = 0.01;

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
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tempo agora",
                        style: TextStyle(
                            fontSize:  widget.maxWidth * 0.079,
                            fontFamily: 'Blinker'
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: widget.maxWidth * 0.038,
                          ),
                          Container(
                            child: Text(
                              "São José do Vale do Rio Preto",
                              style: TextStyle(
                                  fontSize: widget.maxWidth * 0.0285
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: widget.maxWidth * 0.06,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: widget.maxWidth * 0.05,
                          width: widget.maxWidth * 0.05,
                          color: MyColors.darkRed,
                        ),
                        SizedBox(
                          width: widget.maxWidth * 0.01,
                        ),
                        Text(
                          "Condições ruins",
                          style: TextStyle(
                              fontSize: widget.maxWidth * 0.055, fontFamily: 'Roboto'
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: widget.maxHeight * 0.032,
                width: widget.maxWidth,
              ),
              Container(
                width: widget.maxWidth,
                height: widget.maxHeight * 0.635,
                color: MyColors.darkGrey,
                child: GridView.count(
                  primary: true,
                  crossAxisSpacing: widget.maxWidth * 0.02,
                  mainAxisSpacing: widget.maxHeight * 0.014,
                  crossAxisCount: 2,
                  childAspectRatio: widget.maxHeight * 0.004,
                  children: <Widget>[
                    DataCard(
                      label: "Temperatura",
                      value: "25 °C",
                      backgroundColor: MyColors.grey,
                      pipeColor: MyColors.darkBlue,
                      maxWidth: widget.maxWidth,
                      maxHeight: widget.maxHeight,
                      icon:  MdiIcons.thermometer,
                    ),
                    DataCard(
                      label: "Temperatura",
                      value: "25 °C",
                      backgroundColor: MyColors.grey,
                      pipeColor: MyColors.darkBlue,
                      maxWidth: widget.maxWidth,
                      maxHeight: widget.maxHeight,
                      icon:  MdiIcons.thermometer,
                    )
                  ],
                ),
              ),
            ]));
  }
}
