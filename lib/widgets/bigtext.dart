import 'package:flutter/material.dart';

class BIgText extends StatelessWidget {
  final String text;

  const BIgText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
          fontSize: screenHeight / 21.8,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: screenWeight / 196),
    );
  }
}
