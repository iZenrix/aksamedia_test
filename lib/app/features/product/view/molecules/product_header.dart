import 'package:arkatama_test/app/features/product/view/atoms/image_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageButton(
            imagePath: 'assets/images/product/icons/arrow-left.png',
            onPressed: () {
              Get.back();
            },
          ),
          const Row(
            children: [
              ImageButton(
                imagePath: 'assets/images/product/icons/import.png',
              ),
              SizedBox(width: 10),
              ImageButton(
                imagePath: 'assets/images/product/icons/shopping-cart.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
