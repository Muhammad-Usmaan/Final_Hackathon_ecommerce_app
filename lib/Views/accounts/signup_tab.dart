import 'package:final_hackathon_app/controllers/login_signup_controller.dart';
import 'package:final_hackathon_app/custom%20widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../custom widgets/my_button.dart';
import '../../custom widgets/my_button_google.dart';

class SignupTab extends StatelessWidget {
  SignupTab({super.key});

  LoginSignupController loginSignupController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginSignupController>(builder: (context) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Row(
              children: [
                Text('Name'),
              ],
            ),
            MyTextField(controller: loginSignupController.SignupNameController),
            Row(
              children: [
                Text('Email'),
              ],
            ),

            MyTextField(
                controller: loginSignupController.SignupEmailController),
            Row(
              children: [
                Text('Password'),
              ],
            ),
            MyTextField(
                controller: loginSignupController.SignupPasswordController),
            const SizedBox(height: 20),
            // Sign Up Button
            MyButton(onPressed: () {}, text: 'Sign Up'),
            const SizedBox(height: 20),
            // Google Sign Up Button
            MyButtonGoogle()
          ],
        ),
      );
    });
  }
}
