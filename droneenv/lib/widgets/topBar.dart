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

  double _mutablePaddinFactor = 0.09;

  final double _iMutablePaddinFactor = 0.09;

  final double _heightWidgetFactor = 0.10;

  final double _logoPaddingFactorLeft = 0.01;

  final double _logoHeigtFactor = 0.3;

  final double _menuIconHeightFactor = 0.075;

  @override
  Widget build(BuildContext context) {
    return Container( //TOPO
      width: widget.maxWidth,
      height: widget.maxHeight * _heightWidgetFactor,
      color: widget.color1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container( // Logo
            padding: EdgeInsets.only(top: widget.maxHeight * 0.001 , left: widget.maxWidth * _logoPaddingFactorLeft),
            width: widget.maxWidth * _logoHeigtFactor,
            child: Image.asset(widget.logoPath),
          ),
          Container( //Botões
              padding: EdgeInsets.only(top: widget.maxHeight * 0.001, right: widget.maxWidth * _logoPaddingFactorLeft),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: widget.menuFunction ?? null,
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 120),
                          curve: Curves.fastOutSlowIn,
                          width: widget.maxWidth * _mutablePaddinFactor,
                          height: widget.maxWidth * _iMutablePaddinFactor,
                          child: GestureDetector(
                            onTapDown: (_){
                              setState(() {
                                widget.tapColor = widget.color3;
                                _mutablePaddinFactor = 0.15;
                              });
                            },
                            onTapUp: (_){
                              setState(() {
                                widget.tapColor = widget.color2;
                                _mutablePaddinFactor = _iMutablePaddinFactor;
                              });
                            },
                            child: Icon(
                              Icons.menu,
                              color: widget.tapColor,
                              size: widget.maxWidth * _menuIconHeightFactor,
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
