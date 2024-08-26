import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const CustomHeading({super.key, required this.text, required this.fontSize, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        color: color,
        letterSpacing: 0,
        wordSpacing: 0,
        height: 1.1
        
      )
    );
  }
}