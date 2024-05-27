
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../screens/final_page/final_view.dart';
import '../../screens/login/login_view.dart';
import '../../screens/secondpage/view_second.dart';
import '../../utils/app_config/app_config.dart';
import '../../utils/namedroutes/rouet_names.dart';
import '../../utils/navigatorkey/navigator_key.dart';

final routes = GoRouter(
  redirect: (context, state) async {
    if (await istoken() == false) {
      return "/loginscreen";
    } else {
      if (state.fullPath == "/loginscreen") {
        return "/secondscreen";
      } else {
        return null;
      }
    }
  },
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      name: RouteNames.loginscreen,
      path: "/loginscreen",
      builder: (context, state) =>  LoginView(),
    ),

    GoRoute(
        name: RouteNames.seconddetails,
        path: "/secondscreen",
        builder: (context, state) => const SecondView()),
    // GoRoute(
    //     name: RouteNames.finalscreen,
    //     path: "/finalScreen",
    //     builder: (context, state) => const finalView()),


  ],
  initialLocation: "/loginscreen",
);

Future<bool> istoken() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  String? access = pref.getString("id");

  if (access != null) {
    return true;
  } else {
    return false;
  }
}
