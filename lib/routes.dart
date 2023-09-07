import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forget_password.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/success_reset_password.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verify_code.dart';
import 'package:ecommerce_app/view/screen/auth/verify_code_signup.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.resetpassword: (context) => const ResetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),

  //OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
