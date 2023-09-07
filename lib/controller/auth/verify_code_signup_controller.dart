import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VeriftCodeSignUpController extends GetxController {
  checkCode();
  goToSuccesSignUp();
}

class VeriftCodeSignUpControllerImp extends VeriftCodeSignUpController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToSuccesSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
