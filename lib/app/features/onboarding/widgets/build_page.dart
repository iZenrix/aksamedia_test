import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildPage extends StatelessWidget {
  const BuildPage({
    super.key,
    required this.title,
    required this.content,
    required this.imagePath,
  });

  final String title;
  final String content;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/onboarding/content-image-1.jpeg',
            height: Get.height * 0.72,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: Get.width,
            height: Get.height * 0.32,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
