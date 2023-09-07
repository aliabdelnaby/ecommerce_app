import 'package:ecommerce_app/core/localization/change_locale.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/services/services.dart';
import 'routes.dart';
import 'view/screen/auth/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
      home: const Language(),
      routes: routes,
    );
  }
}
