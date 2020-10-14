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

  MyColors myColors = MyColors();

  bool click = false;

  @override
  Widget build(BuildContext context) {
    click = false;
    Color _color = Colors.lightBlue;
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
                  color: myColors.darkGrey,
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
                                      color: myColors.lightGrey,
                                      borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02))
                                  ),
                                  padding: const EdgeInsets.all(0.0),
                                  width: constraints.maxWidth * 0.09,
                                  height: constraints.maxWidth * 0.09,
                                  child: Icon(
                                    Icons.search,
                                    color: myColors.lightWhite,
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
                                      color: myColors.lightGrey,
                                      borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02))
                                  ),
                                  padding: const EdgeInsets.all(0.0),
                                  width: constraints.maxWidth * 0.09,
                                  height: constraints.maxWidth * 0.09,
                                  child: Icon(
                                    Icons.menu,
                                    color: myColors.lightWhite,
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
                  color: click ? myColors.veryDarkWhite : myColors.lightGrey,
                  child: Center(
                    child: FlatButton(
                      color: _color,
                      onPressed: (){
                        print("clicou");
                        setState(() {
                          _color = Colors.red;
                        });
                      },

                      child: Text("Teste"),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: constraints.maxHeight * 0.01,
                      top: constraints.maxHeight * 0.01,
                      bottom: constraints.maxHeight * 0.01
                  ),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.15,
                  color: myColors.darkGrey,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            print("Clicou");
                            click = true;
                          });
                        },
                        child: AnimatedContainer(
                          //Animação
                          duration: Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                          //Decoração
                          padding: EdgeInsets.only(
                              left: constraints.maxHeight * 0.01,
                              top: constraints.maxHeight * 0.01,
                              bottom: constraints.maxHeight * 0.01
                          ),
                          width: constraints.maxHeight * 0.13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                            color: click ? myColors.veryDarkWhite : myColors.lightGrey,
                          ),
                          child: Column( //Conteúdo
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.cloud_queue,
                                  color: myColors.lightWhite,
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
                      Container(
                        padding: EdgeInsets.only(
                            left: constraints.maxHeight * 0.01,
                            top: constraints.maxHeight * 0.01,
                            bottom: constraints.maxHeight * 0.01
                        ),
                        width: constraints.maxHeight * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02)),
                          color: myColors.lightGrey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.alarm,
                                color: myColors.lightWhite,
                              ),
                            ),
                            Container(
                              child: Text("Futuro"),
                            ),
                          ],
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
                          color: myColors.lightGrey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.chat,
                                color: myColors.lightWhite,
                              ),
                            ),
                            Container(
                              child: Text("Chat"),
                            ),
                          ],
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
                          color: myColors.lightGrey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.store,
                                color: myColors.lightWhite,
                              ),
                            ),
                            Container(
                              child: Text("Loja"),
                            ),
                          ],
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
                          color: myColors.lightGrey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.person_pin,
                                color: myColors.lightWhite,
                              ),
                            ),
                            Container(
                              child: Text("Perto"),
                            ),
                          ],
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
                          color: myColors.lightGrey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.search,
                                color: myColors.lightWhite,
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
