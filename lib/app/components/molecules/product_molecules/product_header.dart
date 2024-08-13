import 'package:arkatama_test/app/components/atoms/product_atoms/image_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
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
              SizedBox(width: 15),
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
