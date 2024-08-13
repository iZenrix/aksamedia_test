import 'package:arkatama_test/app/features/onboarding/onboarding.dart';
import 'package:arkatama_test/app/features/onboarding/view/onboarding_feature_page.dart';
import 'package:arkatama_test/app/features/product/product.dart';

class AppPages{
  AppPages._();
  static const initial= OnboardingView.onboardingRoute;

  static final routes = [
    OnboardingFeature.route(),
    ProductFeature.route(),
  ];

}