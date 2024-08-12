import 'package:arkatama_test/app/features/onboarding/view/molecules/page_indicator.dart';
import 'package:arkatama_test/app/features/product/view/atoms/product_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImageShowcase extends StatelessWidget {
  const ProductImageShowcase({
    super.key,
    required this.pageController,
    required this.index,
    required this.onPageChanged,
  });

  final PageController pageController;
  final int index;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildProductImage(),
        Positioned(
          bottom: Get.height * 0.05,
          left: 0,
          right: 0,
          child: PageIndicator(
            itemCount: 4,
            currentIndex: index,
          ),
        ),
      ],
    );
  }

  Widget _buildProductImage() {
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
