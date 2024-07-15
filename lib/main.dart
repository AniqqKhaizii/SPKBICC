import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spkb_icc/constants/style.dart';
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
          scaffoldBackgroundColor: dark,
          primaryColor: Colors.lightBlueAccent,
          fontFamily: GoogleFonts.poppins().fontFamily),
      home: SiteLayout(),
    );
  }
}
