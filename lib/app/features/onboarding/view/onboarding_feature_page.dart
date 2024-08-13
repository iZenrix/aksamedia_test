import 'package:arkatama_test/app/components/atoms/onboarding_atoms/onboarding_atoms.dart';
import 'package:arkatama_test/app/components/molecules/onboarding_molecules/onboarding_molecules.dart';
import 'package:arkatama_test/app/components/organisms/onboarding_organisms/onboarding_organisms.dart';
import 'package:arkatama_test/app/components/templates/onboarding_templates/onboarding_template.dart';
import 'package:arkatama_test/app/features/onboarding/controller/onboarding_controller.dart';
import 'package:arkatama_test/app/features/onboarding/model/onboarding_model.dart';
import 'package:arkatama_test/app/features/product/view/product_feature_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  static const String onboardingRoute = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return OnboardingTemplate(
      content: OnboardingScreen(
        pageController: controller.pageController,
        onPageChanged: (int index) {
          controller.currentPage.value = index;
        },
        onNextPressed: () {
          controller.pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        onboardingData: onboardingData,
      ),
      skipButton: SkipText(
        onTap: () {
          Get.toNamed(ProductFeaturePage.productRoute);
        },
      ),
      pageIndicator: Obx(
        () => PageIndicator(
          itemCount: onboardingData.length,
          currentIndex: controller.currentPage.value,
        ),
      ),
    );
  }
}
