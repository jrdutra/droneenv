import 'package:flutter/material.dart';


class SquareButton extends StatefulWidget {

  double buttonSizeFactor;
  double paddinSizeFactor;
  double maxHeight;
  double maxWidth;
  Color buttonColor;
  Color buttonPressedColor;
  Color currentButtonPressedColor;
  Color iconTextColor;
  String buttonText;
  Function onTap;
  IconData icon;

  SquareButton(
      this.buttonText,
      {this.icon,
      this.buttonSizeFactor,
      this.paddinSizeFactor,
      this.maxHeight,
      this.maxWidth,
      this.buttonColor,
      this.buttonPressedColor,
      this.iconTextColor,
      this.onTap,
      Key key}
      ) : super(key : key) {
      this.currentButtonPressedColor = this.buttonColor;
  }

  @override
  _SquareButtonState createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {

  final double _buttonSizeFactorStart = 0.13;
  final double _buttonPaddinSizeFactorStart = 0.01;

  final double _buttonSizeFactorEnd = 0.18;
  final double _buttonPaddinSizeFactorEnd = 0.03;

  final double _borderRadiusFactor = 0.02;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.currentButtonPressedColor = widget.buttonPressedColor;
          widget.buttonSizeFactor = _buttonSizeFactorEnd;
          widget.paddinSizeFactor = _buttonPaddinSizeFactorEnd;

        });
        widget.onTap();
      },
      child: AnimatedContainer(
        //Animação
        duration: Duration(milliseconds: 120),
        curve: Curves.fastOutSlowIn,
        onEnd: (){
          setState(() {
            widget.buttonSizeFactor = _buttonSizeFactorStart;
            widget.currentButtonPressedColor = widget.buttonColor;
            widget.paddinSizeFactor = _buttonPaddinSizeFactorStart;
          });
        },
        //Decoração
        padding: EdgeInsets.only(
            left: widget.maxHeight * widget.paddinSizeFactor,
            top: widget.maxHeight * widget.paddinSizeFactor,
            bottom: widget.maxHeight * widget.paddinSizeFactor
        ),
        width: widget.maxHeight * widget.buttonSizeFactor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.maxWidth * _borderRadiusFactor)),
          color: widget.currentButtonPressedColor,
        ),
        child: Column( //Conteúdo
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                widget.icon,
                color: widget.iconTextColor,
              ),
            ),
            Container(
              child: Text(
                  widget.buttonText,
                style: TextStyle(
                  color: widget.iconTextColor
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
