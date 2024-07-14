import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spkb_icc/constants/controllers.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/helpers/responsiveness.dart';
import 'package:spkb_icc/widgets/custom_text.dart';

class UtamaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      color: dark,
                      weight: FontWeight.normal),
                )
              ],
            ))
      ],
    );
  }
}
