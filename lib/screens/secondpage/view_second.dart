import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nexteontest/screens/secondpage/responsive/desktop_secondpage.dart';
import 'package:nexteontest/screens/secondpage/responsive/mobile_secondpage.dart';
import 'package:nexteontest/screens/secondpage/responsive/tab_secondpage.dart';

import '../../global_widgets/placeholder/placehold.dart';
import '../../global_widgets/responsive_layout.dart';
import 'controller/controller.dart';


class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {

  late  SecondController controller;
  var tag = DateTime.now().toString();

  @override
  void initState() {
    controller = Get.put(SecondController(),tag: tag);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout (desktop: DesktopSecondPage(controller : controller), mobile: MobileSecondPage(controller : controller), tablet: TabSecondPage(controller : controller),);
  }
}
