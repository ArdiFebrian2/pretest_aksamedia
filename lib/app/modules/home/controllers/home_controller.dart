import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }
}
