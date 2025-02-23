import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onPressed;
  String text;
  MyButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      height: 48,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 87, 87, 1),
            Color.fromRGBO(255, 214, 135, 1)
          ],
        ),
        borderRadius: BorderRadius.circular(7), // Changed from 50 to 7
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            // Added to match container's border radius
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
