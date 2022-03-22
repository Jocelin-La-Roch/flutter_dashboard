import 'package:dasboard/constants/colors.dart';
import 'package:dasboard/constants/controllers.dart';
import 'package:dasboard/helpers/ResponsiveWidget.dart';
import 'package:dasboard/routing/routes.dart';
import 'package:dasboard/widgets/CustomText.dart';
import 'package:dasboard/widgets/SideMenuItem.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context)) Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: _width / 48,),
                  Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("icons/logo.png")
                  ),
                  Flexible(
                      child: CustomText(
                        text: "Dasboard",
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      )
                  ),
                  SizedBox(width: _width / 48)
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Divider(color: lightGrey.withOpacity(0.1),),
          SideMenuItem(
            itemName: sideMenuItems[0],
            onTap: (){
              print("Bonjour");
              //menuController.changeActiveItemTo(sideMenuItems[0]);
            },
          ),
          SideMenuItem(
            itemName: sideMenuItems[1],
            onTap: (){
            },
          ),
          SideMenuItem(
            itemName: sideMenuItems[2],
            onTap: (){
            },
          ),
          SideMenuItem(
            itemName: "Log out",
            onTap: (){
            },
          ),
          /*Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems.map((itemName) => SideMenuItem(
                  itemName: itemName == AuthenticationPageRoute ? "Log Out" : itemName,
                  onTap: (){
                    if(itemName == AuthenticationPageRoute){
                      // TODO
                    }
                    if(menuController.activeItem != itemName){
                      menuController.changeActiveItemTo(itemName);
                      if(ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context)){
                        // Get.back();
                        // TODO
                      }
                    }
                  }
              )).toList()
          )*/
        ],
      ),
    );
  }
}
