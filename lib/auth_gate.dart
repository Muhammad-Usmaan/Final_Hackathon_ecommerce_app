import 'package:final_hackathon_app/Views/on_boarding_screen.dart';
import 'package:final_hackathon_app/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth (or your auth service)

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    // Listen to authentication state changes
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(), // Firebase Auth stream
      builder: (context, snapshot) {
       

        // If user is logged in, return the home page
        if (snapshot.hasData) {
          return NavBar(); // Replace with your home page widget
        }

        // If user is not logged in, return the login/signup page
        return OnBoardingScreen(); // Replace with your login/signup page widget
      },
    );
  }
}