import 'package:final_hackathon_app/Views/accounts/accounts_screen.dart';
import 'package:final_hackathon_app/Views/home_screen.dart';
import 'package:final_hackathon_app/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}