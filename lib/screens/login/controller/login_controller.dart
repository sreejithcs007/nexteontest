import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nexteontest/model/login_model/login_model.dart';
import 'package:nexteontest/utils/app_config/app_config.dart';
import 'package:nexteontest/utils/navigatorkey/navigator_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/namedroutes/rouet_names.dart';
import '../../secondpage/view_second.dart';

class LoginController extends GetxController {
  Dio dio = Dio();

  LoginModel? loginmodel;

  late SharedPreferences pref;

  RxBool isloading = false.obs;

  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  final validkey = GlobalKey<FormState>();

  void onlogin() {
    if (validkey.currentState!.validate() == true) {
      fetchdata();
    }
  }

  Future<void> fetchdata() async {
    final String url = "${AppConfig.baseurl}/api/user/login";
    // final option = Options(headers: {})

    final body = {
      "email": emailcontroller.text,
      "password": passcontroller.text
    };

    try {
      isloading.value = true;

      final response = await dio.post(url, data: body);

      print(response.statusCode);

      if (response.statusCode == 201) {
        var decodeddata = response.data;

        var decoded = LoginModel.fromJson(decodeddata);
        var id = decoded.data?.id;

        pref = await SharedPreferences.getInstance();

       var i= pref.setString("id", id!);
       print(i);


        navigatorKey.currentContext!.goNamed(RouteNames.seconddetails);



         ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(content: Text("successfully Logged in"),backgroundColor: Colors.green,));
      }
    } catch (e) {
      print("Exception  $e");
    }
  }
}
