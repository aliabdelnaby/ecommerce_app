import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "45".tr,
    middleText: "46".tr,
    actions: [
      ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: Text("47".tr)),
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "48".tr,
          )),
    ],
  );
  return Future.value(true);
}
