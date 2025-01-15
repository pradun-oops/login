import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/forgot_password_screen.dart';
import 'package:login/screens/otp_screen.dart';
import 'package:login/screens/sign_up_screen.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_textField.dart';
import 'package:login/widgets/google_logo_button.dart';
import 'package:login/widgets/password_textfiled.dart';
import 'package:login/widgets/small_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
            Image.asset("assets/images/login_page_logo.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWeight / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BIgText(text: "Login"),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const CustomTextfield(
                    hinttext: "Email ID",
                    icon: Icon(CupertinoIcons.mail),
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const PasswordTextField(
                    hindtext: 'Password',
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: const SmallText(
                          text: 'Forgot Password',
                          color: Color(0xFF1560d0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpScreen(),
                        ),
                      );
                    },
                    child: const CustomButton(text: 'Login'),
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SmallText(text: 'OR', color: Colors.black)],
                  ),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const GoogleLogoButton(text: "Login with Google"),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText(
                          text: "New to Logistics? ", color: Colors.black),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ),
                            );
                          },
                          child: const SmallText(
                              text: "Register", color: Color(0xFF1560d0)))
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
