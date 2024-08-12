import 'package:arkatama_test/app/components/molecules/product_module/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  RxBool isExpanded = false.obs;

  RxInt selectedSize = 0.obs;

  RxInt selectedColor = 0.obs;

  final pageController = PageController();
  RxInt currentPage = 0.obs;

  List<ProductCard> relatedProducts = [
    const ProductCard(
      imageUrl: 'assets/images/product/product-image.png',
      title: 'Beauty Set by Irvie',
      price: 'Rp 178.000',
      isNew: true,
      commission: 'Komisi',
    ),
  ];

}