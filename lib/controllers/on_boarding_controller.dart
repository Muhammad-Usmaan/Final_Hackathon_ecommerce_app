import 'package:final_hackathon_app/Views/accounts/accounts_screen.dart';
import 'package:final_hackathon_app/Views/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final PageController pageController = PageController();
  int currentPage = 0;

  // carousel list
  final List<OnboardingContent> onboardingContents = [
    OnboardingContent(
      image: '../assets/images/carousel_image_1.png',
      title: 'Select the Favorities Menu',
      description:
          "Now eat well, don't leave the house,You can choose your favorite food only with one click",
    ),
    OnboardingContent(
      image: 'assets/image2.png',
      title: 'Second Screen',
      description: 'Description for second screen',
    ),
    OnboardingContent(
      image: 'assets/image3.png',
      title: 'Third Screen',
      description: 'Description for third screen',
    ),
  ];

  void nextPage() {
    if (currentPage < onboardingContents.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // Navigate to next screen
      print('Completed onboarding');
    }
  }

  skipCarousel() {
    Get.to(AccountScreen());
  }
}
