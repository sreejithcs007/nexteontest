import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopMainFrame extends StatelessWidget {
  const DesktopMainFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: double.infinity,
      width: 600,
      color: Color(0xFF83D0E4),

      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage("assets/image/testloginim.png")),

            SizedBox(height: 40,),
            
            Text("MISSION MIGRAINE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
            Text("Empower yourself with a Migraine-Free Academic Journey!",style: TextStyle(color: Colors.white,fontSize: 20),)
          ],
        ),
      ),

    );
  }
}
