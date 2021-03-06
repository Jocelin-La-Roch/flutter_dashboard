import 'package:dasboard/constants/colors.dart';
import 'package:dasboard/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController{
  static MenuController instance  = Get.find();
  var activeItem = OverviewPageRoute.obs;
  var hoverItem = "".obs;
  var i = 0.obs;

  increment(){
    i ++;
    update();
  }

  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
    update();
  }

  onHover(String itemName){
    if(!isActive(itemName)) {
      hoverItem.value = itemName;
      update();
    }
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
    switch (itemName){
      case OverviewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData iconData, String itemName){
    if(isActive(itemName)) return Icon(iconData, size: 22, color: dark,);
    return Icon(iconData, color: isHovering(itemName) ? dark : lightGrey);
  }

}