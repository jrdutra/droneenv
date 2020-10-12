import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:droneenv/utils/myColors.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  MyColors myColors = MyColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container( //TOPO
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.15,
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
                                      border: Border.all(
                                        color: myColors.mediumGrey,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02))
                                  ),
                                  padding: const EdgeInsets.all(0.0),
                                  width: constraints.maxWidth * 0.09,
                                  height: constraints.maxWidth * 0.09,
                                  child: Icon(
                                    Icons.search,
                                    color: myColors.ultraLightGrey,
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
                                      border: Border.all(
                                        color: myColors.mediumGrey,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(constraints.maxWidth * 0.02))
                                  ),
                                  padding: const EdgeInsets.all(0.0),
                                  width: constraints.maxWidth * 0.09,
                                  height: constraints.maxWidth * 0.09,
                                  child: Icon(
                                    Icons.menu,
                                    color: myColors.ultraLightGrey,
                                  )
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.70,
                  color: myColors.mediumGrey,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.15,
                  color: myColors.darkGrey,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.red,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.red,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 160.0,
                        height: 10,
                        color: Colors.blue,
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
