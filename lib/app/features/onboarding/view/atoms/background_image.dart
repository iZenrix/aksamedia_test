import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        imagePath,
        height: imagePath == 'assets/images/onboarding/content-image-2.jpeg'
            ? Get.height * 0.75
            : Get.height * 0.72,
        fit: BoxFit.cover,
      ),
    );
  }
}
