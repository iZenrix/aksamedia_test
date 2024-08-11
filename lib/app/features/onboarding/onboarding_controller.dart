import 'package:arkatama_test/app/features/onboarding/widgets/build_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  final PageController pageController = PageController();

  RxInt currentPage = 0.obs;

  List<Widget> buildPages() {
    return [
      const BuildPage(
        title: "Welcome to MyApp",
        content: "This is the first page of your onboarding process.",
        imagePath: "assets/onboarding/onboarding-1.png",
      ),
      const BuildPage(
        title: "Stay Connected",
        content: "This is the second page of your onboarding process.",
        imagePath: "assets/onboarding/content-image-2.jpeg",
      ),
      const BuildPage(
        title: "Get Started",
        content: "This is the third page of your onboarding process.",
        imagePath: "assets/onboarding/content-image-3.jpeg",
      ),
    ];
  }
}