import 'package:dasboard/helpers/ResponsiveWidget.dart';
import 'package:dasboard/widgets/HorizontalMenuItem.dart';
import 'package:dasboard/widgets/VerticalMenuItem.dart';
import 'package:flutter/material.dart';


class SideMenuItem extends StatelessWidget {

  final String itemName;
  final Function onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
    /*if(ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context)){
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }else {
      return HorizontalMenuItem(itemName: itemName, onTap: onTap);
    }*/
  }
}
