import 'package:flutter/material.dart';
import 'package:spkb_icc/helpers/responsiveness.dart';
import 'package:spkb_icc/widgets/large_screen.dart';
import 'package:spkb_icc/widgets/side_menu.dart';
import 'package:spkb_icc/widgets/small_screen.dart';
import 'package:spkb_icc/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      //extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(
          scaffoldKey: scaffoldKey,
        ),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(Icons.menu)),
    );
  }
}
