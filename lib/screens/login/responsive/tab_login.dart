import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteontest/global_widgets/reusable_button.dart';
import 'package:nexteontest/global_widgets/reusable_textbutton.dart';
import 'package:nexteontest/global_widgets/reusable_textformfield.dart';

import '../../../utils/navigatorkey/navigator_key.dart';
import '../controller/login_controller.dart';

class TabLogin extends StatelessWidget {

  final LoginController controller;
  TabLogin({super.key, required this.controller});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Form(
        key: controller.validkey,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [

              SizedBox(height: 60,),

              Text("Welcome Back! Glad to ",style: TextStyle(fontSize:40 ,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("see you again",style: TextStyle(fontSize:40,color: Colors.black,fontWeight: FontWeight.bold),),

              Padding(
                padding: const EdgeInsets.only(left: 60.0,right: 60,top: 50),
                child: ReusableText( controller: controller.emailcontroller,
                  hintText: "Email",
                  fillColor: Color(0xFFF7F8F9),
                  validator: (email){
                    if(email!.isEmpty){
                      return "This field mustnot  be empty  ";
                    }
                    else if(!email.contains("@") && !email.contains("gmail.com")){
                      return "It should contain @ and gmail.com";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 60.0,right: 60,top: 30),
                child: ReusableText( controller: controller.passcontroller,
                  fillColor: Color(0xFFF7F8F9),
                  hintText: "Password",

                  validator: (pass){
                    if(pass!.isEmpty){
                      return  "This field should not be empty";
                    }
                    else if(pass.length < 4){
                      return "minimum  4 characters must be provided ";
                    }
                    else{
                      return null;
                    }
                  },

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 8,bottom: 8,right: 60),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: ReusableTextButton(onPressed: (){}, text: "Forgot password" , textcolor: Colors.black)),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReusableButton(
                    height: 45,
                    width: 300,
                    onPressed: controller.onlogin, text: "Login"),
              ),



              SizedBox(height: MediaQuery.of(navigatorKey.currentContext!).size.height*0.4,),
              TextButton(onPressed: (){}, child: RichText(text: TextSpan(

                  children: [
                    TextSpan(text: "Don't have an account?",style:  TextStyle(color: Colors.black,fontSize: 18)),
                    TextSpan(text: " Register Now",style: TextStyle(color: Color(0xFF83D0E4),fontSize: 18))
                  ]
              )))
            ],
          ),
        ),
      ),
    );
  }
}
