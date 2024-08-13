import 'package:aksamedia_test/app/components/atoms/text/title_text.dart';
import 'package:aksamedia_test/app/components/molecules/product_molecules/product_molecules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  final String title;
  final List<ProductCard> products;
  final EdgeInsetsGeometry? padding;

  const ProductList({
    super.key,
    required this.title,
    required this.products, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleMediumText(
            text: title,
            color: const Color(0xff242626),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: Get.height * 0.34,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: products[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
