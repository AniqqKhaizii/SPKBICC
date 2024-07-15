import 'package:flutter/material.dart';
import 'package:spkb_icc/pages/utama/widgets/cards_large.dart';
import 'package:spkb_icc/pages/utama/widgets/charts_large.dart';

class UtamaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView(
          padding: EdgeInsets.only(left: 10, right: 10),
          children: [UtamaCardsLarge(), ChartsLarge()],
        )),
      ],
    );
  }
}
