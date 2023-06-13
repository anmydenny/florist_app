import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  // final _repository = AuthRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2)).then((value) async {
      // if ((await _repository.getToken()).isNotEmpty) {
      //   Get.offAllNamed(Routes.landing);
      // } else {
      Get.offAllNamed(Routes.signIn);
      // }
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

}