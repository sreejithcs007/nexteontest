import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key,  required this.controller, this.hintText, this.validator, this.fillColor});

  // final String text;
  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        // Text(text),
        SizedBox(height: 10,),

        TextFormField(
          controller: controller,
          validator: validator  ,
          decoration: InputDecoration(
            fillColor: fillColor,
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder()
          ),
        )
      ],
    );
  }
}
