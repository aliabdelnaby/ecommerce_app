import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      physics: const BouncingScrollPhysics(),
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            onBoardingList[i].image!,
            width: 200,
            height: 230,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 2,
                color: AppColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
