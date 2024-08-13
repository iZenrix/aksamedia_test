import 'package:aksamedia_test/app/features/onboarding/binding/onboarding_binding.dart';
import 'package:get/get.dart';
import 'view/onboarding_feature_page.dart';

class OnboardingFeature{
static GetPage route() {
    return GetPage(
      name: OnboardingView.onboardingRoute,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    );
  }
}