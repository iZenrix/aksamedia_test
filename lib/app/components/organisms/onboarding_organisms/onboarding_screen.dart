import 'package:arkatama_test/app/features/onboarding/model/onboarding_model.dart';
import 'package:arkatama_test/app/components/organisms/onboarding_organisms/onboarding_content.dart';
import 'package:arkatama_test/app/features/product/product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController pageController;
  final Function(int) onPageChanged;
  final Function onNextPressed;
  final List<OnboardingModel> onboardingData;

  const OnboardingScreen({
    super.key,
    required this.pageController,
    required this.onPageChanged,
    required this.onNextPressed,
    required this.onboardingData,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      onPageChanged: onPageChanged,
      itemCount: onboardingData.length,
      itemBuilder: (BuildContext context, int index) {
        final data = onboardingData[index];

        return Stack(
          children: <Widget>[
            OnboardingContent(
              imagePath: data.imagePath,
              title: data.title,
              description: data.description,
              textButton: 'Selanjutnya',
              onPressed: () {
                if (index == onboardingData.length - 1) {
                  Get.to(() => const ProductView());
                } else {
                  onNextPressed();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
