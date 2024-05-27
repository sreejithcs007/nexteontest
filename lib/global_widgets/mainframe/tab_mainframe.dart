import 'package:flutter/material.dart';

class TabMainFrame extends StatelessWidget {
  const TabMainFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF83D0E4),
      height: double.infinity,
      width: 450,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/testloginim.png")),

            SizedBox(height: 40,),

            Text("MISSION MIGRAINE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
            Text("Empower yourself with a Migraine-Free \n Academic Journey!",style: TextStyle(color: Colors.white,fontSize: 20),)
          ],
        ),
      ),
    );

  }
}
