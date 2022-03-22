import 'package:dasboard/constants/colors.dart';
import 'package:dasboard/constants/controllers.dart';
import 'package:dasboard/controllers/MenuControlller.dart';
import 'package:dasboard/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap(),
      onHover: (value){
        value ? menuController.onHover(itemName) :
            menuController.onHover("not hovering");
      },
      child: Container(
        color: menuController.hoverItem.toString() == itemName ? lightGrey.withOpacity(0.5): Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: menuController.hoverItem.toString() == itemName || menuController.activeItem.toString() == itemName,
              child: Container(
                width: 3,
                height: 40,
                color: dark,
              ),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
            ),
            SizedBox(width: _width / 80),
            Padding(
              padding: EdgeInsets.all(16),
              child: menuController.returnIconFor(itemName),
            ),
            if(!(menuController.activeItem.toString() == itemName)) Flexible(
                child: CustomText(
                  text: itemName,
                  color: menuController.hoverItem.toString() == itemName ? dark : lightGrey,
                )
            ) else Flexible(
                child: CustomText(
                  text: itemName,
                  color: dark,
                  size: 18,
                  fontWeight: FontWeight.bold,
                )
            )
          ],
        ),
      ),
    );
  }
}
