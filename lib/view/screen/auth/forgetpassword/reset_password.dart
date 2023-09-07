import 'package:ecommerce_app/controller/auth/reset_password_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/functions/valid_input.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auch.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kBackground,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Reset Password',
          style: TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(height: 20),
              CustomTextTitleAuth(
                text: "35".tr,
              ),
              const SizedBox(height: 10),
              CustomTextBodyAuth(
                text: "35".tr,
              ),
              const SizedBox(height: 65),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 6, 30, 'password');
                },
                mycontroller: controller.password,
                hintText: "13".tr,
                iconData: Icons.lock_outline,
                labelText: "19".tr,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 6, 30, 'password');
                },
                mycontroller: controller.repassword,
                hintText: "Re" + " " + "13".tr,
                iconData: Icons.lock_outline,
                labelText: "19".tr,
              ),
              CustomButtonAuth(
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
                text: "33".tr,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
