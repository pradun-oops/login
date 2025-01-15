import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/login_page.dart';
import 'package:login/screens/otp_screen.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_textField.dart';
import 'package:login/widgets/small_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/sign_up_page_logo.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWeight / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BIgText(
                    text: 'Sign Up',
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const CustomTextfield(
                    hinttext: "Enter your email",
                    icon: Icon(CupertinoIcons.mail),
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const CustomTextfield(
                    hinttext: "Full Name",
                    icon: Icon(Icons.person),
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const CustomTextfield(
                    hinttext: "Phone",
                    icon: Icon(Icons.phone),
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        SmallText(
                          text: "By signing up, you're agree to our ",
                          color: Colors.black,
                        ),
                        SmallText(text: "Terms &", color: Color(0xFF1560d0)),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SmallText(
                            text: "Conditions ", color: Color(0xFF1560d0)),
                        SmallText(
                          text: "and ",
                          color: Colors.black,
                        ),
                        SmallText(
                            text: "Privacy Policy", color: Color(0xFF1560d0)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  GestureDetector(
                    child: const CustomButton(text: 'Continuee'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText(
                          text: "Joined us before? ", color: Colors.black),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const SmallText(
                          text: "Login",
                          color: Color(0xFF1560d0),
                        ),
                      ),
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
