import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spkb_icc/constants/controllers.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/widgets/custom_text.dart';

class HorizontalMenuitem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HorizontalMenuitem({
    super.key,
    required this.itemName,
    required this.onTap,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
          scaffoldKey.currentState?.openEndDrawer();
        },
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("Not Hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                ),
                SizedBox(width: _width / 80),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                      child: CustomText(
                          text: itemName,
                          size: 22,
                          color: menuController.isHovering(itemName)
                              ? dark
                              : lightGrey,
                          weight: FontWeight.normal))
                else
                  Flexible(
                    child: CustomText(
                        text: itemName,
                        size: 18,
                        color: Colors.white,
                        weight: FontWeight.bold),
                  )
              ]),
            )));
  }
}
