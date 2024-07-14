import 'package:flutter/material.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/widgets/custom_text.dart';

class PemeriksaaanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
            text: "Pemeriksaan",
            size: 20,
            color: lightGrey,
            weight: FontWeight.normal));
  }
}
