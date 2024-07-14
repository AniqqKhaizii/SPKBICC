import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spkb_icc/constants/style.dart';
import 'package:spkb_icc/routing/routes.dart';

class MenuControllers extends GetxController {
  static MenuControllers instance = Get.find();
  var activeItem = dashboardUtamaPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case dashboardUtamaPageRoute:
        return _customIcon(Icons.dashboard, itemName);
      case kompaunPageRoute:
        return _customIcon(Icons.pages, itemName);
      case kutipanPageRoute:
        return _customIcon(Icons.monetization_on, itemName);
      case notisKesalahanPageRoute:
        return _customIcon(Icons.notifications_active, itemName);
      case pemeriksaanPageRoute:
        return _customIcon(Icons.check_circle, itemName);
      default:
        return _customIcon(Icons.check_box, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: Colors.white);

    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
