import 'package:flutter/material.dart';
import 'package:login/widgets/bigtext.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/password_textfiled.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
            Image.asset("assets/images/reset_password_logo.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWeight / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BIgText(text: "Reset"),
                  const BIgText(text: "Password"),
                  SizedBox(
                    height: screenHeight / 43.6,
                  ),
                  const PasswordTextField(
                    hindtext: 'New Password',
                  ),
                  SizedBox(
                    height: screenHeight / 30,
                  ),
                  const PasswordTextField(
                    hindtext: 'Confirm Password',
                  ),
                  SizedBox(
                    height: screenHeight / 20,
                  ),
                  const CustomButton(text: "Submit")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
