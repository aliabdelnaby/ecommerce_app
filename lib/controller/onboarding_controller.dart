import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currenPage = 0;
  @override
  next() {
    currenPage++;
    if (currenPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(
        currenPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currenPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
