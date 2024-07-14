import 'package:flutter/material.dart';
import 'package:spkb_icc/helpers/responsiveness.dart';
import 'package:spkb_icc/widgets/horizontal_menu_item.dart';
import 'package:spkb_icc/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenuItem(
      {Key? key,
      required this.itemName,
      required this.onTap,
      required this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuitem(
        itemName: itemName,
        onTap: onTap,
        scaffoldKey: scaffoldKey,
      );
    }
  }
}
