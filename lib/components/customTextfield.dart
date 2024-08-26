import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final Icon prefixIcons;
  final Icon? suffixIcons;
  final double width;
  const CustomTextfield(
      {super.key,
      required this.prefixIcons,
      this.suffixIcons,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(20)),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              border: InputBorder.none,
              prefixIcon: prefixIcons,
              suffixIcon: suffixIcons)),
    );
  }
}
