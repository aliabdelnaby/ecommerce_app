import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/functions/alert_exit_app.dart';
import 'package:ecommerce_app/core/functions/valid_input.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_auch.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_signup.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.kBackground,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            '17'.tr,
            style: const TextStyle(
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: GetBuilder<SignUpControllerImp>(
          builder: (controller) => WillPopScope(
            onWillPop: alertExitApp,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(
                      text: "10".tr,
                    ),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(
                      text: "24".tr,
                    ),
                    const SizedBox(height: 65),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, 'username');
                      },
                      mycontroller: controller.username,
                      hintText: "23".tr,
                      iconData: Icons.person_outlined,
                      labelText: "20".tr,
                    ),
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
                    CustomTextFormAuth(
                      isNumber: true,
                      valid: (val) {
                        return validInput(val!, 6, 50, 'phone');
                      },
                      mycontroller: controller.phone,
                      hintText: "22".tr,
                      iconData: Icons.phone_outlined,
                      labelText: "21".tr,
                    ),
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
                    CustomButtonAuth(
                      onPressed: () {
                        controller.signUp();
                      },
                      text: "17".tr,
                    ),
                    const SizedBox(height: 20),
                    CustomTextSignUpOrSignIn(
                      textOne: "25".tr,
                      textTwo: "26".tr,
                      onTap: () {
                        controller.goToSignIn();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
