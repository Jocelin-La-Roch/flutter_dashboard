import 'package:flutter/material.dart';

const int largeScreenSize = 992;
const int mediumScreenSize = 768;
const int smallScreenSize = 576;

class ResponsiveWidget extends StatelessWidget {

  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget({Key? key, required this.largeScreen, required this.mediumScreen, required this.smallScreen}) : super(key: key);

  static bool isSmallScreen(BuildContext context) => MediaQuery.of(context).size.width <= smallScreenSize;
  static bool isMediumScreen(BuildContext context) => (MediaQuery.of(context).size.width > smallScreenSize &&
      MediaQuery.of(context).size.width <= mediumScreenSize);
  static bool isLargeScreen(BuildContext context) => MediaQuery.of(context).size.width > mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double _width = constraints.maxWidth;
      if(_width > mediumScreenSize){
        return largeScreen;
      }else if(_width > smallScreenSize && _width <= mediumScreenSize ){
        return mediumScreen;
      }else{
        return smallScreen;
      }
    });
  }
}
