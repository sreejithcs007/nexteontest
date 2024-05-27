import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:nexteontest/global_widgets/Reusable_container.dart';
import 'package:nexteontest/global_widgets/reusable_button.dart';

import '../controller/controller.dart';

// void main() {
//   runApp(MaterialApp(
//     home: DesktopSecondPage(),
//   ));
// }

class DesktopSecondPage extends StatefulWidget {
  final SecondController controller;
  DesktopSecondPage({super.key, required this.controller});

  @override
  State<DesktopSecondPage> createState() => _DesktopSecondPageState();
}

class _DesktopSecondPageState extends State<DesktopSecondPage> {


  @override
  void initState() {
    widget.controller.listdata();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Align(
         alignment: Alignment.center,
         child: Container(

           height: 500,
           width: 650,
           color: Color(0xFFE4EEF9),

           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height:150,
                   width: 650,
                   decoration: BoxDecoration(
                     color: Color(0xFF277F81),
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Column(
                     children: [
                       Text("Emergency Kit",style: TextStyle(color: Colors.white,fontSize: 36),),
                       Text("We know migraines at school can be a real bummer, but you're a superhero for handling ",style: TextStyle(color: Colors.white),),
                       Center(child: Text("them like a champ!",style: TextStyle(color: Colors.white))),
                       SizedBox(height: 30,),
                       Text("Your emergency kit is here to save the day and make you feel better.",style: TextStyle(color: Colors.white),)

                     ],
                   ),

                 ),
               ),

               Expanded(
                 child: Obx(
                 () =>  GridView.builder(
                       itemCount:  widget.controller.values.length ,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                       childAspectRatio: 1,
                         mainAxisSpacing: 10,
                         mainAxisExtent: 120,
                         crossAxisSpacing: 70
                       ),
                       itemBuilder: (context,index){

                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(

                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10)
                         ),

                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(Icons.home),
                                 Expanded(
                                   child: Column(
                                     children: [
                                       Text( widget.controller.listmodel.data?.list?[index].name ?? " ",style: TextStyle(color: Colors.black),),
                                       Text( widget.controller.listmodel.data?.list?[index].contact ?? " ",style: TextStyle(color: Colors.black),),

                                     ],
                                   ),
                                 ),

                               ],
                             ),
                             Expanded(child: Padding(
                               padding: const EdgeInsets.only(left: 20.0),
                               child: Text( widget.controller.listmodel.data?.list?[index].details ?? " ",style: TextStyle(color: Colors.black),),
                             )),


                           ],

                         ),

                       ),
                     );
                       }),
                 ),
               ),
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.only(bottom: 10.0),
                 child: ReusableButton(onPressed:  widget.controller.goto, text: "Add Emergency Contact",color: Color(0xFF83D0E4),),
               )

             ],
           ),
         ),
       )



    );
  }
}
