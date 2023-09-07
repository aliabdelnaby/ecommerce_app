import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessesetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessesetPasswordControllerImp extends SuccessesetPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
