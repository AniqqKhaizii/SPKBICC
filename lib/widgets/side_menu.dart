import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spkb_icc/constants/controllers.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/helpers/responsiveness.dart';
import 'package:spkb_icc/routing/routes.dart';
import 'package:spkb_icc/widgets/custom_text.dart';
import 'package:spkb_icc/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: dark,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child:
                          Image.asset("assets/icons/spkb_icon.png", width: 28),
                    ),
                    Flexible(
                        child: CustomText(
                            text: "SPKB ICC",
                            size: 20,
                            color: active,
                            weight: FontWeight.bold)),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                      itemName: itemName,
                      onTap: () {
                        if (itemName == pemeriksaanPageRoute) {
                          //TODO:: go to Pemeriksaan Page
                        }

                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveitemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }

                          navigationController.navigateTo(itemName);
                        }
                      },
                      scaffoldKey: scaffoldKey,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
