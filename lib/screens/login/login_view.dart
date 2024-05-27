import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nexteontest/screens/login/responsive/desktop_login.dart';
import 'package:nexteontest/screens/login/responsive/mobile_login.dart';
import 'package:nexteontest/screens/login/responsive/tab_login.dart';

import '../../global_widgets/placeholder/placehold.dart';
import '../../global_widgets/responsive_layout.dart';
import 'controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late  LoginController controller;
  var tag = DateTime.now().toString();

  @override
  void initState() {
    controller = Get.put(LoginController(),tag: tag);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Placehold(child: ResponsiveLayout (desktop: DesktopLogin(controller : controller), mobile: MobileLogin(controller : controller), tablet: TabLogin(controller : controller),));
  }
}
