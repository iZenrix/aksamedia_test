import 'package:arkatama_test/app/features/onboarding/model/onboarding_model.dart';
import 'package:arkatama_test/app/features/onboarding/onboarding_controller.dart';
import 'package:arkatama_test/app/features/product/product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            onPageChanged: (int index) {
              controller.currentPage.value = index;
            },
            itemCount: onboardingData.length,
            itemBuilder: (BuildContext context, int index) {
              final data = onboardingData[index];

              return Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      data.imagePath,
                      height:
                          index == 1 ? Get.height * 0.75 : Get.height * 0.72,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      ),
                      width: Get.width,
                      height: Get.height * 0.32,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            data.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            textAlign: TextAlign.center,
                            data.description,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 35),
                          SizedBox(
                            width: Get.width,
                            height: Get.height * 0.05,
                            child: ElevatedButton(
                                onPressed: () {
                                  controller.pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn,
                                  );
                                  if (index == onboardingData.length - 1) {
                                    Get.to(() => const ProductView());
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff242626),
                                  foregroundColor: const Color(0xffffffff),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text('Selanjutnya')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: Get.height * 0.06,
            right: Get.width * 0.05,
            child: GestureDetector(
              onTap: () {
                Get.to(() => const ProductView());
              },
              child: const Text(
                'Lewati',
                style: TextStyle(
                  color: Color(0xff434747),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: Get.height * 0.35,
            child: _buildPageIndicator(),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(onboardingData.length, (index) {
        return Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            height: 4,
            width: controller.currentPage.value == index ? 20.0 : 4.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      }),
    );
  }
}
