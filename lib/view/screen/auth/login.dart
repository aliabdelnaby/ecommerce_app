import 'package:ecommerce_app/controller/auth/login_controller.dart';
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

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kBackground,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WillPopScope(
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
                  text: "11".tr,
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
                  // mycontroller: null,
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
                  // mycontroller: null,
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "14".tr,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                CustomButtonAuth(
                  onPressed: () {
                    controller.login();
                  },
                  text: "15".tr,
                ),
                const SizedBox(height: 30),
                CustomTextSignUpOrSignIn(
                  textOne: "16".tr,
                  textTwo: "17".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
