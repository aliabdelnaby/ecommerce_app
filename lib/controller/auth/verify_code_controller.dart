import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VeriftCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VeriftCodeControllerImp extends VeriftCodeController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetpassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
