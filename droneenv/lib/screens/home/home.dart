import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'package:droneenv/widgets/topBar.dart';
import 'package:droneenv/widgets/squareButton.dart';
import 'dart:io';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double _buttonSizeFactor1 = 0.13;
  Color _buttonColor1 = MyColors.lightGrey;
  double _paddinSizeFactor1 = 0.01;

  double _buttonSizeFactor5 = 0.13;
  Color _buttonColor5 = MyColors.lightGrey;
  double _paddinSizeFactor5 = 0.01;

  double _contentOpacity1 = 1.0;
  double _contentOpacity2 = 1.0;

  int index = 0;

  @override
  Widget build(BuildContext context) {

    List<AnimatedOpacity> mainScreens = [
      AnimatedOpacity(
          curve: Curves.fastOutSlowIn,
          opacity: _contentOpacity1,
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
      ),
      AnimatedOpacity(
          curve: Curves.fastOutSlowIn,
          opacity: _contentOpacity2,
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
      ),
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
                            "Teste",
                            icon: Icons.cloud_queue,
                            buttonSizeFactor: 0.13,
                            paddinSizeFactor: 0.01,
                            maxHeight: constraints.maxHeight,
                            maxWidth: constraints.maxWidth,
                            buttonColor: MyColors.lightGrey,
                            buttonPressedColor: MyColors.lightBlue,
                            iconTextColor: MyColors.lightWhite,
                            onTap:(){print("Tei");}
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
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
