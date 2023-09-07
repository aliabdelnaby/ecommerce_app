import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textOne, textTwo;
  final void Function() onTap;

  const CustomTextSignUpOrSignIn({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        InkWell(
          onTap: onTap,
          child: Text(
            textTwo,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                color: AppColor.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
