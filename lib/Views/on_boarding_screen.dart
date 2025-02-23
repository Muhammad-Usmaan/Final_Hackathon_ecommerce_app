import 'package:final_hackathon_app/controllers/on_boarding_controller.dart';
import 'package:final_hackathon_app/custom%20widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnBoardingController onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (context) {
      return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: onBoardingController.pageController,
                onPageChanged: (int page) {
                  setState(() {
                    onBoardingController.currentPage = page;
                  });
                },
                itemCount: onBoardingController.onboardingContents.length,
                itemBuilder: (context, index) {
                  return SingleOnboardingPage(
                    content: onBoardingController.onboardingContents[index],
                  );
                },
              ),
            ),
            MyButton(
                onPressed: () {
                  onBoardingController.skipCarousel();
                },
                text: 'Next'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: onBoardingController.skipCarousel,
                    child: Text(
                      onBoardingController.currentPage > 0 ? '' : 'SKIP',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: List.generate(
                      onBoardingController.onboardingContents.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: onBoardingController.currentPage == index
                                ? Color.fromRGBO(214, 19, 85, 1)
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: onBoardingController.nextPage,
                    child: Icon(
                      onBoardingController.currentPage ==
                              onBoardingController.onboardingContents.length - 1
                          ? null
                          : Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class SingleOnboardingPage extends StatelessWidget {
  final OnboardingContent content;

  const SingleOnboardingPage({required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            content.image,
            height: 300,
          ),
          SizedBox(height: 40),
          Text(
            content.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            content.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingContent {
  final String image;
  final String title;
  final String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}
