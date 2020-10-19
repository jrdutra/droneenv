import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {

  double maxWidth;
  double maxHeight;
  Color color1;
  Color color2;
  Color color3;
  String logoPath;
  Function menuFunction;
  Color tapColor;

  TopBar(
      maxWidth,
      maxHeight,
      color1,
      color2,
      color3,
      logoPath,
      {menuFunction,
      Key key}) : super(key: key) {
    this.maxWidth = maxWidth;
    this.maxHeight = maxHeight;
    this.color1 = color1;
    this.color2 = color2;
    this.color3 = color3;
    this.logoPath = logoPath;
    this.menuFunction = menuFunction ?? null;
    this.tapColor = this.color2;
  }

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {

  double paddinFactor = 0.09;

  @override
  Widget build(BuildContext context) {
    return Container( //TOPO

      width: widget.maxWidth,
      height: widget.maxHeight * 0.10,
      color: widget.color1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container( // Logo
            padding: const EdgeInsets.only(top: 2, left: 10),
            width: widget.maxWidth * 0.3,
            child: Image.asset(widget.logoPath),
          ),
          Container( //Botões
              padding: const EdgeInsets.only(top: 2, right: 10),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: widget.menuFunction ?? null,
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 120),
                          curve: Curves.fastOutSlowIn,
                          width: widget.maxWidth * paddinFactor,
                          height: widget.maxWidth * 0.09,
                          child: GestureDetector(
                            onTapDown: (_){
                              setState(() {
                                widget.tapColor = widget.color3;
                                paddinFactor = 0.15;
                              });
                            },
                            onTapUp: (_){
                              setState(() {
                                widget.tapColor = widget.color2;
                                paddinFactor = 0.09;
                              });
                            },
                            child: Icon(
                              Icons.menu,
                              color: widget.tapColor,
                              size: widget.maxWidth * 0.075,
                            ),
                          )
                      )
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
