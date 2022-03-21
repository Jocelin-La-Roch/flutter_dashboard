import 'package:dasboard/constants/colors.dart';
import 'package:dasboard/helpers/ResponsiveWidget.dart';
import 'package:dasboard/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !(ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isMediumScreen(context))
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: "Flutter Dashboard",
              color: lightGrey,
              size: 20,
              fontWeight: FontWeight.bold,
            )
          ),
          Expanded(child: Container()),
          !ResponsiveWidget.isSmallScreen(context) ? IconButton(
            onPressed: (){},
            icon: Icon(Icons.settings, color: dark.withOpacity(0.7),
            )
          ) : SizedBox(width: 0),
          Stack(
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.notifications, color: dark.withOpacity(0.7),)
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2)),
                )
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          !ResponsiveWidget.isSmallScreen(context) ? SizedBox(width: 16) : SizedBox(width: 0,),
          !ResponsiveWidget.isSmallScreen(context) ? CustomText(text: "Maître Yoda", color: lightGrey) : SizedBox(width: 0,),
          !ResponsiveWidget.isSmallScreen(context) ? SizedBox(width: 16,) : SizedBox(width: 0,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(
        color: dark,
      ),
      backgroundColor: Colors.transparent,
    );
