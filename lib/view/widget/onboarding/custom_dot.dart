import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotOnBoarding extends StatelessWidget {
  const CustomDotOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 900),
              width: controller.currenPage == index ? 20 : 5,
              height: 6,
              decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
