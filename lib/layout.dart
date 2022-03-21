import 'package:dasboard/helpers/ResponsiveWidget.dart';
import 'package:dasboard/widgets/LargeScreen.dart';
import 'package:dasboard/widgets/SmallScreen.dart';
import 'package:dasboard/widgets/MediumScreen.dart';
import 'package:dasboard/widgets/topNav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen()
      )
    );
  }
}
