import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String? hintText;
  bool? obscureText;
  TextEditingController controller;
  MyTextField(
      {super.key, this.hintText, this.obscureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,  
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );
  }
}
