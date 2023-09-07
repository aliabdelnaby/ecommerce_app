import 'package:ecommerce_app/controller/auth/success_signup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kBackground,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '32'.tr,
          style: const TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Icon(
                Icons.check_circle_outline,
                size: 150,
                color: AppColor.kPrimaryColor,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "37".tr,
                style: const TextStyle(
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "38".tr,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: CustomButtonAuth(
                  onPressed: () {
                    controller.goToPageLogin();
                  },
                  text: "31".tr,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
