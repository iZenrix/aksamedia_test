import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingTemplate extends StatelessWidget {
  final Widget content;
  final Widget skipButton;
  final Widget pageIndicator;

  const OnboardingTemplate({super.key,
    required this.content,
    required this.skipButton,
    required this.pageIndicator,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          content,
          Positioned(
            top: Get.height * 0.06,
            right: Get.width * 0.05,
            child: skipButton,
          ),
          Positioned(
            bottom: Get.height * 0.35,
            child: pageIndicator,
          ),
        ],
      ),
    );
  }
}
