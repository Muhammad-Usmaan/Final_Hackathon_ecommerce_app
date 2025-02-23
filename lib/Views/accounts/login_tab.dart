import 'package:final_hackathon_app/controllers/login_signup_controller.dart';
import 'package:final_hackathon_app/custom%20widgets/my_button.dart';
import 'package:final_hackathon_app/custom%20widgets/my_button_google.dart';
import 'package:final_hackathon_app/custom%20widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginTab extends StatelessWidget {
  LoginTab({super.key});

  LoginSignupController loginSignupController =
      Get.put(LoginSignupController());
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
                Text('Email'),
              ],
            ),

            MyTextField(controller: loginSignupController.LoginEmailController),
            Row(
              children: [
                Text('Password'),
              ],
            ),
            MyTextField(
                controller: loginSignupController.LoginPasswordController,
                obscureText: true,
                ),
            const SizedBox(height: 20),
            // Login Button
            MyButton(
                onPressed: () async {
                  await loginSignupController.loginUser();
                },
                text: 'Login'),
            const SizedBox(height: 20),
            // Google Login Button
            MyButtonGoogle()
          ],
        ),
      );
    });
  }
}
