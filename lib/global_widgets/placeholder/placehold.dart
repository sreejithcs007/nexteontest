import 'package:flutter/material.dart';
import 'package:nexteontest/screens/login/responsive/desktop_login.dart';
import 'package:nexteontest/screens/login/responsive/tab_login.dart';
import 'package:nexteontest/utils/size_checker.dart';

import '../mainframe/desktop_mainframe.dart';
import '../mainframe/tab_mainframe.dart';

class Placehold extends StatelessWidget {
  const Placehold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {

      return Scaffold(

        body: Row(
          children: [
            if(fntabsize(size.width))
              TabMainFrame(),

            if(fndesktopsize(size.width))
              DesktopMainFrame(),

            Expanded(child: child)
          ],
        ),
      );
    },);
  }
}
