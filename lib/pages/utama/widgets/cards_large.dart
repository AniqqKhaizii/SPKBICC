import 'package:flutter/material.dart';
import 'package:spkb_icc/pages/utama/widgets/info_card.dart';

class UtamaCardsLarge extends StatelessWidget {
  const UtamaCardsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
            title: "KOMPAUN DIKELUARKAN",
            value: "1800",
            topColor: Colors.blue,
            isActive: false,
            onTap: () {}),
        SizedBox(width: _width / 128),
        InfoCard(
            title: "KOMPAUN DIBAYAR",
            value: "879",
            topColor: Colors.green,
            isActive: false,
            onTap: () {}),
        SizedBox(width: _width / 128),
        InfoCard(
            title: "KOMPAUN BATAL",
            value: "78",
            topColor: Colors.red,
            isActive: false,
            onTap: () {}),
        SizedBox(width: _width / 128),
        InfoCard(
            title: "TINDAKAN MAHKAMAH",
            value: "0",
            topColor: Colors.deepOrange,
            isActive: false,
            onTap: () {}),
        SizedBox(width: _width / 128),
        InfoCard(
            title: "KOMPAUN TUNGGAKAN",
            value: "843",
            topColor: Colors.yellow,
            isActive: false,
            onTap: () {}),
        SizedBox(width: _width / 128),
      ],
    );
  }
}
