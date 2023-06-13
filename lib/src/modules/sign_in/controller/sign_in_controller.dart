import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/app_styles.dart';

class SignInController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    mobileNumberController.text = '1234567890';
    passwordController.text = 'qwerty';
    super.onInit();
  }

  signInClick() {
    final mobileNumber = mobileNumberController.text.trim();
    final password = passwordController.text.trim();
    if (mobileNumberController.text.isNotEmpty &&
        mobileNumber.length == 10 &&
        password.isNotEmpty) {
      Get.offAllNamed(Routes.landing);
    } else {
      Get.snackbar("Sign in failed", "Invalid mobile number or password",
          snackPosition: SnackPosition.TOP, duration: const Duration(seconds: 6),
          backgroundColor: AppColors.red,colorText: AppColors.white
      );
    }
  }

}