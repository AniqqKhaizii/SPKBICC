import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spkb_icc/constants/controllers.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/widgets/custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  const VerticalMenuItem(
      {super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("Not Hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Container(
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: menuController.returnIconFor(itemName),
                      ),
                      if (!menuController.isActive(itemName))
                        Flexible(
                            child: CustomText(
                                text: itemName,
                                size: 14,
                                color: menuController.isHovering(itemName)
                                    ? dark
                                    : lightGrey,
                                weight: FontWeight.normal))
                      else
                        Flexible(
                          child: CustomText(
                              text: itemName,
                              size: 14,
                              color: Colors.white,
                              weight: FontWeight.bold),
                        )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
