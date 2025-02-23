import 'package:final_hackathon_app/controllers/login_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  LoginSignupController loginSignupController = Get.put(LoginSignupController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginSignupController>(
      builder: (context) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Handle navigation to Home
                  Get.back(); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Handle navigation to Settings
                 Get.back(); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  // Handle navigation to Profile
                 Get.back(); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: ()async {
                  // Handle logout logic
                  await loginSignupController.signOut();
                },
              ),
            ],
          ),
        );
      }
    );
  }
}