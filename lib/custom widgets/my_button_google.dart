import 'package:flutter/material.dart';

class MyButtonGoogle extends StatelessWidget {
  const MyButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          // Add Google login logic here
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            // Added to match container's border radius
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        icon: Image.asset(
          'assets/images/google_logo.png',
          height: 24,
        ),
        label: const Text('Continue with Google'),
      ),
    );
  }
}
