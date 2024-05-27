import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteontest/screens/login/controller/login_controller.dart';
import 'package:nexteontest/utils/navigatorkey/navigator_key.dart';

import '../../../global_widgets/reusable_button.dart';
import '../../../global_widgets/reusable_textbutton.dart';
import '../../../global_widgets/reusable_textformfield.dart';

class MobileLogin extends StatelessWidget {
  final LoginController controller;
   MobileLogin({super.key, required this.controller});







  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Form(
          key: controller.validkey,
          child: Column(

            children: [
              Image(image: AssetImage("assets/image/testloginim.png")),

              Text("Welcome Back! Glad to ",style: TextStyle(fontSize:40 ,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("see you again",style: TextStyle(fontSize:40,color: Colors.black,fontWeight: FontWeight.bold),),


              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
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
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
                child: ReusableText( controller: controller.passcontroller,
                  hintText: "Password",
                  fillColor: Color(0xFFF7F8F9),

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

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReusableTextButton(onPressed: (){}, text: "Forgot password" , textcolor: Colors.black),
                ),
              ),

              ReusableButton(
                  width: 210,
                  onPressed:
              controller.onlogin, text: "Login"),


              SizedBox(height: MediaQuery.of(navigatorKey.currentContext!).size.height*0.1,),
              TextButton(onPressed: (){}, child: RichText(text: TextSpan(

                  children: [
                    TextSpan(text: "Don't have an account",style:  TextStyle(color: Colors.black)),
                    TextSpan(text: "Register Now",style: TextStyle(color: Color(0xFF83D0E4)))
                  ]
              )))
            ],
          ),
        ),
      ),
    );
  }
}
