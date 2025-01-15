import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenWeight = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight / 14.53,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWeight / 19.6),
          color: const Color(0xFF0065FF)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: screenHeight / 33,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
