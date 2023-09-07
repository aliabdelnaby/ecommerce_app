import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      height: 50,
      onPressed: () {
        controller.next();
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
      ),
      textColor: Colors.white,
      color: AppColor.kPrimaryColor,
      child: Text(
        '8'.tr,
      ),
    );
  }
}
