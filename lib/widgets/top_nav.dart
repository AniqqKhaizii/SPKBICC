import 'package:flutter/material.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/helpers/responsiveness.dart';
import 'package:spkb_icc/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Image.asset(
                    "assets/icons/spkb_icon.png",
                    width: 32,
                  ),
                )
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(children: [
        Visibility(
            child: CustomText(
                text: "SPKB ICC",
                color: light,
                size: 20,
                weight: FontWeight.bold)),
      ]),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
