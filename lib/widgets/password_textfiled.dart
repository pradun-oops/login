import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String hindtext;
  const PasswordTextField({
    super.key,
    required this.hindtext,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isHidden = true;
  void _togglePasswordVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWeight = MediaQuery.of(context).size.width;
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: _isHidden,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            _isHidden ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: _togglePasswordVisibility,
        ),
        icon: const Icon(Icons.lock_open),
        hintText: widget.hindtext,
        hintStyle: TextStyle(
          fontSize: screenWeight / 30,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
