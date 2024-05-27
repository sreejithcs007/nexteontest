// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:nexteontest/global_widgets/reusable_textformfield.dart';
//
// import '../../../global_widgets/reusable_button.dart';
//
// class Desktopfinal extends StatelessWidget {
//    Desktopfinal({super.key});
//
//   final namecon = TextEditingController();
//   final contcom = TextEditingController();
//   final detailcon = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Align(
//         alignment: Alignment.center,
//         child: Container(
//
//           height: 500,
//           width: 650,
//           color: Color(0xFFE4EEF9),
//
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height:150,
//                   width: 650,
//                   decoration: BoxDecoration(
//                       color: Color(0xFF277F81),
//                       borderRadius: BorderRadius.circular(10)
//                   ),
//                   child: Column(
//                     children: [
//                       Text("Emergency Kit",style: TextStyle(color: Colors.white,fontSize: 36),),
//                       Text("We know migraines at school can be a real bummer, but you're a superhero for handling ",style: TextStyle(color: Colors.white),),
//                       Center(child: Text("them like a champ!",style: TextStyle(color: Colors.white))),
//                       SizedBox(height: 30,),
//                       Text("Your emergency kit is here to save the day and make you feel better.",style: TextStyle(color: Colors.white),)
//
//                     ],
//                   ),
//
//                 ),
//               ),
//
//               Expanded(
//                 child: Obx(
//                       () =>  Column(
//                         children: [
//                           ReusableText(controller: ,),
//                           ReusableText(controller: null,),
//                           ReusableText(controller: null,),
//                           ReusableText(controller: null,),
//
//
//                         ],
//                       )
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10.0),
//                 child: ReusableButton(onPressed: controller.goto, text: "Add Emergency Contact",color: Color(0xFF83D0E4),),
//               )
//
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
