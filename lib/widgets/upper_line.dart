import 'package:flutter/material.dart';

class UpperLine extends StatelessWidget {
  final Color lineColor;

  UpperLine([this.lineColor = const Color(0xFFc50e29)]);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lineColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 20,
      //decoration: ,
    );
  }
}
