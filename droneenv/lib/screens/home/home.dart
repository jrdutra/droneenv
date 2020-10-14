import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';
import 'dart:io';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double _buttonSizeFactor1 = 0.13;
  double _paddinSizeFactor1 = 0.01;
  Color _buttonColor1 = MyColors.lightGrey;

  double _buttonSizeFactor2 = 0.13;
  Color _buttonColor2 = MyColors.lightGrey;

  double _buttonSizeFactor3 = 0.13;

  Color _buttonColor4 = MyColors.lightGrey;

  double _buttonSizeFactor5 = 0.13;
  Color _buttonColor5 = MyColors.lightGrey;
  double _paddinSizeFactor5 = 0.01;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container( //TOPO
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.10,
                      color: MyColors.darkGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container( // Logo
                            padding: const EdgeInsets.only(top: 2, left: 10),
                            width: constraints.maxWidth * 0.3,
                            child: Image.asset("assets/images/logo-dark.png"),
                          ),
                          Container( //Botões
                              padding: const EdgeInsets.only(top: 2, right: 10),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: MyColors.lightGrey,
                                            borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02))
                                        ),
                                        padding: const EdgeInsets.all(0.0),
                                        width: constraints.maxWidth * 0.09,
                                        height: constraints.maxWidth * 0.09,
                                        child: Icon(
                                          Icons.search,
                                          color: MyColors.lightWhite,
                                        )
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: MyColors.lightGrey,
                                            borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02))
                                        ),
                                        padding: const EdgeInsets.all(0.0),
                                        width: constraints.maxWidth * 0.09,
                                        height: constraints.maxWidth * 0.09,
                                        child: Icon(
                                          Icons.menu,
                                          color: MyColors.lightWhite,
                                        )
                                    ),
                                  ),

                                ],
                              )
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.75,
                      color: MyColors.darkGrey,
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
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _buttonSizeFactor1 = 0.18;
                                _paddinSizeFactor1 = 0.03;
                                _buttonColor1 = MyColors.lightGrey;
                              });
                            },
                            child: AnimatedContainer(
                              //Animação
                              duration: Duration(milliseconds: 100),
                              curve: Curves.fastOutSlowIn,
                              onEnd: (){
                                setState(() {
                                  _buttonSizeFactor1 = 0.13;
                                  _paddinSizeFactor1 = 0.01;
                                  _buttonColor1 = MyColors.lightGrey;
                                });
                              },
                              //Decoração
                              padding: EdgeInsets.only(
                                  left: constraints.maxHeight * _paddinSizeFactor1,
                                  top: constraints.maxHeight * 0.01,
                                  bottom: constraints.maxHeight * 0.01
                              ),
                              width: constraints.maxHeight * _buttonSizeFactor1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                                color: _buttonColor1,

                              ),
                              child: Column( //Conteúdo
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.cloud_queue,
                                      color: MyColors.lightWhite,
                                    ),
                                  ),
                                  Container(
                                    child: Text("Agora"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _buttonSizeFactor2 = 0.18;
                                _buttonColor2 = MyColors.lightBlue;
                              });
                            },
                            child: AnimatedContainer(
                              //Animação
                              duration: Duration(milliseconds: 100),
                              curve: Curves.fastOutSlowIn,
                              onEnd: (){
                                setState(() {
                                  _buttonSizeFactor2 = 0.13;
                                  _buttonColor2 = MyColors.lightGrey;
                                });
                              },
                              //Decoração
                              padding: EdgeInsets.only(
                                  left: constraints.maxHeight * 0.01,
                                  top: constraints.maxHeight * 0.01,
                                  bottom: constraints.maxHeight * 0.01
                              ),
                              width: constraints.maxHeight * _buttonSizeFactor2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                                color: _buttonColor2,
                              ),
                              child: Column( //Conteúdo
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.alarm,
                                      color: MyColors.lightWhite,
                                    ),
                                  ),
                                  Container(
                                    child: Text("Previsão"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _buttonSizeFactor3 = 0.18;
                              });
                            },
                            child: AnimatedContainer(
                              //Animação
                              duration: Duration(milliseconds: 100),
                              curve: Curves.fastOutSlowIn,
                              onEnd: (){
                                setState(() {
                                  _buttonSizeFactor3 = 0.13;
                                });
                              },
                              //Decoração
                              padding: EdgeInsets.only(
                                  left: constraints.maxHeight * 0.01,
                                  top: constraints.maxHeight * 0.01,
                                  bottom: constraints.maxHeight * 0.01
                              ),
                              width: constraints.maxHeight * _buttonSizeFactor3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                                color: MyColors.lightGrey,
                              ),
                              child: Column( //Conteúdo
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.chat,
                                      color: MyColors.lightWhite,
                                    ),
                                  ),
                                  Container(
                                    child: Text("Chat"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _buttonColor4 = MyColors.lightBlue;
                              });
                            },
                            child: AnimatedContainer(
                              //Animação
                              duration: Duration(milliseconds: 120),
                              curve: Curves.fastOutSlowIn,
                              onEnd: (){
                                setState(() {

                                  _buttonColor4 = MyColors.lightGrey;
                                });
                              },
                              //Decoração
                              padding: EdgeInsets.only(
                                  left: constraints.maxHeight * 0.01,
                                  top: constraints.maxHeight * 0.01,
                                  bottom: constraints.maxHeight * 0.01
                              ),
                              width: constraints.maxHeight * _buttonSizeFactor2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                                color: _buttonColor4,
                              ),
                              child: Column( //Conteúdo
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.store,
                                      color: MyColors.lightWhite,
                                    ),
                                  ),
                                  Container(
                                    child: Text("Previsão"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _buttonColor5 = MyColors.lightBlue;
                                _buttonSizeFactor5 = 0.18;
                                _paddinSizeFactor5 = 0.03;
                              });
                            },
                            child: AnimatedContainer(
                              //Animação
                              duration: Duration(milliseconds: 120),
                              curve: Curves.fastOutSlowIn,
                              onEnd: (){
                                setState(() {
                                  _buttonSizeFactor5 = 0.13;
                                  _buttonColor5 = MyColors.lightGrey;
                                  _paddinSizeFactor5 = 0.01;
                                });
                              },
                              //Decoração
                              padding: EdgeInsets.only(
                                  left: constraints.maxHeight * _paddinSizeFactor5,
                                  top: constraints.maxHeight * 0.01,
                                  bottom: constraints.maxHeight * 0.01
                              ),
                              width: constraints.maxHeight * _buttonSizeFactor5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                                color: _buttonColor5,
                              ),
                              child: Column( //Conteúdo
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.person_pin,
                                      color: MyColors.lightWhite,
                                    ),
                                  ),
                                  Container(
                                    child: Text("Perto"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxHeight * 0.01,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: constraints.maxHeight * 0.01,
                                top: constraints.maxHeight * 0.01,
                                bottom: constraints.maxHeight * 0.01
                            ),
                            width: constraints.maxHeight * 0.13,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                              color: MyColors.lightGrey,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.search,
                                    color: MyColors.lightWhite,
                                  ),
                                ),
                                Container(
                                  child: Text("Buscar"),
                                ),
                              ],
                            ),
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
