import 'package:arkatama_test/app/components/molecules/product_molecules/product_molecules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  final String title;
  final List<ProductCard> products;

  const ProductList({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: Get.height * 0.335,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: products[0],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
