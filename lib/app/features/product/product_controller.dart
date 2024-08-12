import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  RxBool isExpanded = false.obs;

  RxInt selectedSize = 0.obs;

  RxInt selectedColor = 0.obs;

  final pageController = PageController();
  RxInt currentPage = 0.obs;
}