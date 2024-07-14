import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spkb_icc/controllers/navigation_controller.dart';
import 'package:spkb_icc/layout.dart';
import 'package:spkb_icc/controllers/menu_controller.dart';

void main() {
  Get.put(MenuControllers());
  Get.put(NavigationControllers());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SPKB ICC",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black12,
          primaryColor: Colors.lightBlueAccent),
      home: SiteLayout(),
      
    );
  }
}
