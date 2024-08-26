import 'package:flutter/material.dart';

class CustomGallery extends StatelessWidget {
  final BoxConstraints constraints;
  final String image;
  const CustomGallery(
      {super.key, required this.constraints, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.11,
      width: constraints.maxWidth * 0.21,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
