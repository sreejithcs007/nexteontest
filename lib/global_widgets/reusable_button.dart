import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({super.key, required this.onPressed, this.color,required this.text, this.height, this.width});

  final VoidCallback onPressed;
  final Color? color;
  final String text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: StadiumBorder(),
      height: height,
        minWidth: width,
      color: color ?? Colors.blue,
      onPressed: onPressed,
    child: Text(text),
    );
  }
}
