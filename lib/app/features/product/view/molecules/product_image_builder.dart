import 'package:arkatama_test/app/features/product/view/atoms/product_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImageBuilder extends StatelessWidget {
  const ProductImageBuilder({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.5,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: onPageChanged,
        itemCount: 4,
        itemBuilder: (context, index) {
          return const ProductImage(
            imagePath: 'assets/images/product/product-image.png',
          );
        },
      ),
    );
  }
}
