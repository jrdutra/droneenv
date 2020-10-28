import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {

  String label;
  String value;
  Color backgroundColor;
  Color pipeColor;
  double maxWidth;
  double maxHeight;
  IconData icon;


  DataCard({
      this.label,
      this.value,
      this.backgroundColor,
      this.pipeColor,
      this.maxWidth,
      this.maxHeight,
      this.icon,
      Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          color: backgroundColor,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: maxWidth * 0.015,
                color: pipeColor,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: maxWidth * 0.02, top: maxHeight * 0.01
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: maxWidth * 0.015),
                      child:Text(
                        label,
                        style: TextStyle(
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                    SizedBox(
                      height: maxHeight * 0.013,
                    ),
                    Row(
                      children: [
                        Icon(
                            icon
                        ),
                        SizedBox(
                          width: maxWidth * 0.017,
                        ),
                        Text(value)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
