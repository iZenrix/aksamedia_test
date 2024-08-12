import 'package:flutter/material.dart';

class PageIndicatorDot extends StatelessWidget {
  final bool isActive;

  const PageIndicatorDot({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 4,
      width: isActive ? 20.0 : 4.0,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
