import 'dart:async';

import 'package:final_hackathon_app/Views/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    // Create a timer that will navigate to home screen after 3 seconds
    Timer(
      const Duration(seconds: 3),
      () {
        // Navigate to home screen and remove splash screen from stack
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset(
                'assets/images/Splash_screen_back.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Splash_screen_logo.png',
                  height: 200,
                ),
                const SizedBox(height: 20),
                Text('Food Couriers',
                    style: GoogleFonts.poppins(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(214, 19, 85, 1),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
