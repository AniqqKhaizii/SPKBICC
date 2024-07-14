import 'package:flutter/material.dart';
import 'package:spkb_icc/pages/kompaun/kompaun.dart';
import 'package:spkb_icc/pages/kutipan/kutipan.dart';
import 'package:spkb_icc/pages/notiskesalahan/notiskesalahan.dart';
import 'package:spkb_icc/pages/pemeriksaan/pemeriksaan.dart';
import 'package:spkb_icc/pages/utama/utama.dart';
import 'package:spkb_icc/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case dashboardUtamaPageRoute:
      return _getPageRoute(UtamaPage());
    case kompaunPageRoute:
      return _getPageRoute(KompaunPage());
    case kutipanPageRoute:
      return _getPageRoute(KutipanPage());
    case notisKesalahanPageRoute:
      return _getPageRoute(NotisKesalahanPage());
    case pemeriksaanPageRoute:
      return _getPageRoute(PemeriksaaanPage());
    default:
      return _getPageRoute(UtamaPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
