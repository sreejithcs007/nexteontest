import 'dart:js';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nexteontest/screens/final_page/responsive/desktop_final.dart';
import 'package:nexteontest/utils/app_config/app_config.dart';
import 'package:nexteontest/utils/navigatorkey/navigator_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/listmodel/listmodel.dart';
import '../../../utils/namedroutes/rouet_names.dart';

class SecondController extends GetxController {
  Dio dio = Dio();

  RxBool isloading = false.obs;
  late ListModel listmodel;

  late SharedPreferences preferences;


  RxList values = <ListElement>[].obs;

  Future<void> adddata() async {

    try{

      preferences = await SharedPreferences.getInstance();
     var id =  preferences.get("id");
      var url = "${AppConfig.baseurl}/api/emergency-kit";
      final option = Options(headers: {"Content-Type": "application/json"});


      final Map<String, dynamic> body =
      {
        "userId": "$id",
        "details": "",
        "localType": 0,
        "contact": "string",
        "name": "string"
      };

      var response = await dio.post(url,options: option,data: body);







    }catch(e){
      print("Exception on create $e");
    }




  }

  Future<void> listdata() async {
    await SharedPreferences.getInstance();

    // var sharedid = preferences.get("id");
    // print("jbdchsc   $sharedid");

    try {
      var url = "${AppConfig.baseurl}/api/emergency-kit/list";
      final option = Options(headers: {"Content-Type": "application/json"});

      final Map<String, dynamic> body = {
        "sortType": 0,
        "sortOrder": -1,
        "statusArray": [1],
        "screenType": [0],
        "emergencyKitIds": [],
        "userIds": ["6634db7665f74a0faeb0abc9"],
        "limit": -1,
        "skip": -1,
        "searchingText": ""
      };

      var response = await dio.post(url, options: option, data: body);

      print("response ${response.statusCode}");

      if(response.statusCode == 201){

        var decodeddata = response.data;

        listmodel = ListModel.fromJson(decodeddata);

        values.value = listmodel.data?.list ?? [];
        print("datas $values");


      }


    } catch (e) {
      print("List Exception : $e");
    }
  }

  Future<void> goto() async{

    // Navigator.push(navigatorKey.currentContext!,MaterialPageRoute(builder: (context)=>Desktopfinal()));
navigatorKey.currentContext!.goNamed(RouteNames.finalscreen);
  }
}
