import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final BoxConstraints constraints;
  final double width;
  final String text;
  // final double height;
  final Color color;
  final Color color2;
  const Categories(
      {super.key,
      required this.width,
      required this.color,
      required this.constraints,
      required this.text,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.07,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(
        child: Text(
          text,
          style:
              TextStyle(color: color2, fontSize: constraints.maxWidth * 0.05),
        ),
      ),
    );
  }
}
