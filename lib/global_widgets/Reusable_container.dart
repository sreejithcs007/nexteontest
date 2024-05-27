import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({super.key, this.height, this.width, required this.firstline, required this.phno, required this.details, this.icon});

  final double? height;
  final double? width;
  final String firstline;
  final String phno;
  final String details;
  final  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 139,
      width: width ?? 291,
      
      child: Column(
        children: [
         Row(
           children: [
             Icon(icon),
             Column(
               children: [
                 Text(firstline),
                 Text(phno)

               ],
             )
           ],
         ),

          Text(details)
        ],
      ),
      
      
    );
  }
}
