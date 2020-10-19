import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:droneenv/widgets/topBar.dart';
import 'package:droneenv/widgets/squareButton.dart';
import 'package:droneenv/screens/home/weatherNow.dart';
import 'package:droneenv/screens/home/weatherForecast.dart';
import 'dart:io';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index = 0;

  @override
  Widget build(BuildContext context) {

    List mainScreens = [
      WeatherNow(),
      WeatherForecast()
    ];

    return Scaffold(
        body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TopBar(
                        constraints.maxWidth,
                        constraints.maxHeight,
                        MyColors.darkGrey,
                        MyColors.lightWhite,
                        MyColors.lightBlue,
                        "assets/images/logo-dark.png"
                    ),
                    Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.75,
                      color: MyColors.darkGrey,
                      child: mainScreens[index]
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: constraints.maxHeight * 0.01,
                          top: constraints.maxHeight * 0.01,
                          bottom: constraints.maxHeight * 0.01
                      ),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.15,
                      color: MyColors.darkGrey,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SquareButton(
                            "Teste 1",
                            icon: Icons.cloud_queue,
                            buttonSizeFactor: 0.13,
                            paddinSizeFactor: 0.01,
                            maxHeight: constraints.maxHeight,
                            maxWidth: constraints.maxWidth,
                            buttonColor: MyColors.lightGrey,
                            buttonPressedColor: MyColors.lightBlue,
                            iconTextColor: MyColors.lightWhite,
                            onTap:(){
                              index = 0;
                            }
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
                          ),
                          SquareButton(
                              "Teste 2",
                              icon: Icons.alarm,
                              buttonSizeFactor: 0.13,
                              paddinSizeFactor: 0.01,
                              maxHeight: constraints.maxHeight,
                              maxWidth: constraints.maxWidth,
                              buttonColor: MyColors.lightGrey,
                              buttonPressedColor: MyColors.lightBlue,
                              iconTextColor: MyColors.lightWhite,
                              onTap:(){
                                index = 1;
                              }
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )
        )
    );
  }
}
