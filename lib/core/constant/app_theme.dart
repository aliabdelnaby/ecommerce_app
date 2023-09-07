import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: 'PlayfairDisplay',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.grey,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      height: 2,
      color: AppColor.grey,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
  primarySwatch: Colors.blue,
);
