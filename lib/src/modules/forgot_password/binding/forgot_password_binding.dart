import 'package:florist_app/src/modules/forgot_password/controller/forgot_password_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ForgotPasswordController>(
        ForgotPasswordController()
    );
  }
}
