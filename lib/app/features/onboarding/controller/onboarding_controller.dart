import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  final PageController pageController = PageController();

  RxInt currentPage = 0.obs;
}