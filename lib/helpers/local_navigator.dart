import 'package:flutter/widgets.dart';
import 'package:spkb_icc/constants/controllers.dart';
import 'package:spkb_icc/routing/router.dart';
import 'package:spkb_icc/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: dashboardUtamaPageRoute,
      onGenerateRoute: generateRoute,
    );
