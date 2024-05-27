
import 'package:flutter/material.dart';


import '../utils/size_checker.dart';

class ResponsiveLayout extends StatelessWidget{

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  ResponsiveLayout({super.key, required this.desktop,required this.mobile,required this.tablet});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (fndesktopsize(size.width)) {
            return desktop;
          }
          else if (fntabsize(size.width)) {
            return tablet;
          }

          else {
            return mobile;
          }
        });
  }
}
