import 'package:arkatama_test/app/features/onboarding/controller/onboarding_controller.dart';
import 'package:arkatama_test/app/features/onboarding/model/onboarding_model.dart';
import 'package:arkatama_test/app/features/onboarding/view/atoms/skip_text.dart';
import 'package:arkatama_test/app/features/onboarding/view/molecules/page_indicator.dart';
import 'package:arkatama_test/app/features/onboarding/view/organisms/onboarding_screen.dart';
import 'package:arkatama_test/app/features/onboarding/view/templates/onboarding_template.dart';
import 'package:arkatama_test/app/features/product/product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OnboardingController());

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
          Get.to(() => const ProductView());
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
