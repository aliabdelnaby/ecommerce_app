import 'package:ecommerce_app/controller/auth/forget_password_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/functions/valid_input.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auch.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kBackground,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          '14'.tr,
          style: const TextStyle(
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
                text: "27".tr,
              ),
              const SizedBox(height: 10),
              CustomTextBodyAuth(
                text: "29".tr,
              ),
              const SizedBox(height: 65),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 6, 100, 'email');
                },
                mycontroller: controller.email,
                hintText: "12".tr,
                iconData: Icons.email_outlined,
                labelText: "18".tr,
              ),
              CustomButtonAuth(
                onPressed: () {
                  controller.goToVerifyCode();
                },
                text: "30".tr,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
