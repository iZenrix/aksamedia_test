import 'package:arkatama_test/app/core/theme/text_theme.dart';
import 'package:arkatama_test/app/features/onboarding/view/pages/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aksamedia Test',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: buildTextTheme(),
      ),
      home: const OnboardingView(),
    );
  }
}
