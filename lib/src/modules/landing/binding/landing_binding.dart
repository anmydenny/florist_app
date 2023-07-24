import 'package:florist_app/src/modules/landing/controller/landing_controller.dart';
import 'package:get/get.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LandingController>(
        LandingController()
    );
  }
}