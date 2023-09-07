import 'package:ecommerce_app/controller/auth/success_signup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kBackground,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Success Reset Password',
          style: TextStyle(
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
                height: 40,
              ),
              Text(
                "37".tr,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Text("36".tr),
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
