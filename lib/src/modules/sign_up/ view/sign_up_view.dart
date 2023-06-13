import 'package:florist_app/src/utils/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text_field.dart';
import '../controller/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);
  String? userName = '';
  String? mobile = '';
  String? password = '';
  String? confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Sign Up",
                  style: AppTextStyles.h1,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sign Up to your account",
                  style: AppTextStyles.p2,
                ),
                const SizedBox(
                  height: 40,
                ),
                AppTextFiled(
                  controller: controller.mobileNumberController,
                  keyboardType: TextInputType.text,
                  hintText: 'User Name',
                  labelText: 'User Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter user name";
                    }
                    userName = value;
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFiled(
                  controller: controller.mobileNumberController,
                  keyboardType: TextInputType.phone,
                  hintText: 'Mobile number',
                  labelText: 'Mobile number',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter mobile number";
                    }
                    mobile = value;
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFiled(
                  controller: controller.passwordController,
                  keyboardType: TextInputType.text,
                  hintText: "Password",
                  labelText: "Password",
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }
                    password = value;
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFiled(
                  controller: controller.passwordController,
                  keyboardType: TextInputType.text,
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }
                    confirmPassword = value;
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                AppButton(
                    text: "Sign Up",
                    onPressed: controller.signUpClick),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    // style: defaultStyle,
                    children:[
                      const TextSpan(
                        text: 'Already a User? ',
                        style: AppTextStyles.p2,
                      ),
                      TextSpan(
                          text: 'Sign In',
                          style: AppTextStyles.p1,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offAllNamed(Routes.signIn);
                            }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
        ),
      ),
    );
  }
}
