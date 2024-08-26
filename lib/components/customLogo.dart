import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final double height2;
  final double width2;

  const CustomLogo(
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.height2,
      required this.width2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade200, width: 2)),
      child: Center(
        child: SizedBox(
          height: height2,
          width: width2,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
