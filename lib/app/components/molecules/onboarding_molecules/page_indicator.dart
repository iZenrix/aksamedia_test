import 'package:arkatama_test/app/components/atoms/onboarding_atoms/onboarding_atoms.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const PageIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return PageIndicatorDot(
            isActive: index == currentIndex,
        );
      }),
    );
  }
}
