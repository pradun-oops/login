// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hinttext;
  final Icon icon;

  const CustomTextfield({
    super.key,
    required this.hinttext,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double screenWeight = MediaQuery.of(context).size.width;
    return TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        icon: icon,
        hintText: hinttext,
        hintStyle: TextStyle(
            fontSize: screenWeight / 27,
            fontWeight: FontWeight.w200,
            color: Colors.black),
      ),
    );
  }
}
