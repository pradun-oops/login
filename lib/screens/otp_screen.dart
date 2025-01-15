import 'package:flutter/material.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/otp_container.dart';
import 'package:login/widgets/small_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 20,
          ),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/otp_page_logo.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWeight / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BIgText(text: "Enter OTP"),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const Row(
                    children: [
                      SmallText(
                          text: "An 4 digit code has been send to",
                          color: Colors.black)
                    ],
                  ),
                  const Row(
                    children: [
                      SmallText(text: "+91 9695363264", color: Colors.black)
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OtpContainer(),
                      OtpContainer(),
                      OtpContainer(),
                      OtpContainer(),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomButton(text: "Submit"),
                  ),
                  SizedBox(
                    height: screenHeight / 35,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(text: "Didn't receive? ", color: Colors.black),
                      SmallText(text: "Send again", color: Color(0xFF1560d0))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
