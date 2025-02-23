import 'package:final_hackathon_app/Views/on_boarding_screen.dart';
import 'package:final_hackathon_app/auth_gate.dart';
import 'package:final_hackathon_app/firebase_options.dart';
import 'package:final_hackathon_app/nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}