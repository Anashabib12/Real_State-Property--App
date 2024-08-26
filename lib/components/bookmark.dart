import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  const Bookmark({super.key, required this.width, required this.height, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 248, 255),
        borderRadius: BorderRadius.circular(13),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Image.asset(image, width: 17, height: 8),
      ),
    );
  }
}
