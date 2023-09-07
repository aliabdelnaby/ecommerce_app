import 'package:ecommerce_app/controller/auth/verify_code_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VeriftCodeControllerImp controller = Get.put(VeriftCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kBackground,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Verification Code',
          style: TextStyle(
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(
              text: 'Check Code',
            ),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
              text:
                  'Please enter the digit code sent to aliabdelnaby@gmail.com',
            ),
            const SizedBox(height: 65),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: const Color(0xff5DB1DF),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
