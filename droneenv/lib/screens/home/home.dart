import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:droneenv/widgets/topBar.dart';
import 'package:droneenv/widgets/squareButton.dart';
import 'package:droneenv/screens/home/weatherNow.dart';
import 'package:droneenv/screens/home/weatherForecast.dart';
import 'dart:io';



import 'package:provider/provider.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static final _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {

    const double _bottonMenuPaddingFactor = 0.01;
    const double _bottonMenuHightFactor = 0.15;
    const double _squareButtonSizeFactor =  0.13;
    int _pageIndex;


    return Scaffold(
        body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints){

                List<Widget> _mainScreens = [
                  WeatherNow(constraints.maxHeight, constraints.maxWidth),
                  WeatherForecast(constraints.maxHeight, constraints.maxWidth),
                ];

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
                    Expanded(
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: _mainScreens.length,
                          itemBuilder: (context, index) {
                            return _mainScreens[index];
                          }
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: constraints.maxHeight * _bottonMenuPaddingFactor,
                          top: constraints.maxHeight * _bottonMenuPaddingFactor,
                          bottom: constraints.maxHeight * _bottonMenuPaddingFactor
                      ),
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * _bottonMenuHightFactor,
                      color: MyColors.darkGrey,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SquareButton(
                            "Agora",
                            icon: Icons.cloud_queue,
                            buttonSizeFactor: _squareButtonSizeFactor,
                            paddinSizeFactor: _bottonMenuPaddingFactor,
                            maxHeight: constraints.maxHeight,
                            maxWidth: constraints.maxWidth,
                            buttonColor: MyColors.lightGrey,
                            buttonPressedColor: MyColors.lightBlue,
                            iconTextColor: MyColors.lightWhite,
                            onTap:(){
                                _pageIndex = 0;
                                _pageController.animateToPage(_pageIndex, curve: Curves.decelerate, duration: Duration(milliseconds: 240)); // for animated jump. Requires a curve and a duration
                            }
                          ),
                          SizedBox(
                            width: constraints.maxHeight * _bottonMenuPaddingFactor,
                          ),
                          SquareButton(
                              "Previsão",
                              icon: Icons.calendar_today,
                              buttonSizeFactor: _squareButtonSizeFactor,
                              paddinSizeFactor: _bottonMenuPaddingFactor,
                              maxHeight: constraints.maxHeight,
                              maxWidth: constraints.maxWidth,
                              buttonColor: MyColors.lightGrey,
                              buttonPressedColor: MyColors.lightBlue,
                              iconTextColor: MyColors.lightWhite,
                              onTap:(){
                                _pageIndex = 1;
                                _pageController.animateToPage(_pageIndex, curve: Curves.decelerate, duration: Duration(milliseconds: 240));
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
