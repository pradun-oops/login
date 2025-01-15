import 'package:flutter/material.dart';
import 'package:login/screens/reset_password_screen.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_textField.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            Image.asset("assets/images/forget_password_logo.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWeight / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BIgText(text: "Forgot"),
                  const BIgText(text: "Password?"),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const CustomTextfield(
                    hinttext: "Enter Gmail / Mobile Number",
                    icon: Icon(Icons.email),
                  ),
                  SizedBox(
                    height: screenHeight / 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen(),
                        ),
                      );
                    },
                    child: CustomButton(text: "Submit"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
