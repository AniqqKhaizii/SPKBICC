import 'package:flutter/material.dart';

class ChartsLarge extends StatelessWidget {
  const ChartsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          width: _width / 4,
          height: 700,
          color: Color(0XFF0A0C1E),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          width: _width / 2.5,
          height: 700,
          color: Color(0XFF0A0C1E),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          width: _width / 4,
          height: 700,
          color: Color(0XFF0A0C1E),
        ),
      ],
    );
  }
}
