import 'package:flutter/material.dart';

class ReusableTextButton extends StatelessWidget {
  const ReusableTextButton({super.key, required this.onPressed, required this.text,  this.textcolor});
  final VoidCallback onPressed;
  final String text;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text,style: TextStyle(color: textcolor ?? Colors.black),));
  }
}
