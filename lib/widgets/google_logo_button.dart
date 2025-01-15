import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleLogoButton extends StatelessWidget {
  final String text;
  const GoogleLogoButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenWeight = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: screenHeight / 14.53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWeight / 19.6),
          color: const Color(0xFFF1F5F6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              SvgPicture.asset("assets/svg/google_logo.svg"),
              SizedBox(
                width: screenWeight / 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: screenHeight / 50,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
