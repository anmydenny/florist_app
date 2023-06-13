import 'package:florist_app/src/modules/sign_in/controller/sign_in_controller.dart';
import 'package:florist_app/src/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/app_styles.dart';
import '../../../widgets/app_button.dart';
import 'package:get/get.dart';

class SignInView extends GetView<SignInController> {
  SignInView({Key? key}) : super(key: key);
  String? mobile;
  String? password;
  final _loginFormKey = GlobalKey<FormState>();

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
          key: _loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Sign In",
                style: AppTextStyles.h1,
              ),
              const SizedBox(
                height: 40,
              ),
              AppTextFiled(
                controller: controller.mobileNumberController,
                keyboardType: TextInputType.phone,
                hintText: 'Mobile number',
                labelText: 'Mobile number',
                prefixIcon: const Icon(Icons.phone_android,color: AppColors.btnBgColor,),
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
                prefixIcon: const Icon(Icons.lock_outline,color: AppColors.btnBgColor,),
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
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.forgotPassword);
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: AppTextStyles.p3,
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              AppButton(
                  text: "Sign In",
                  onPressed: controller.signInClick),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  // style: defaultStyle,
                  children:[
                    const TextSpan(
                      text: 'Not a User? ',
                      style: AppTextStyles.p2,
                    ),
                    TextSpan(
                        text: 'Sign Up',
                        style: AppTextStyles.p1,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.offAllNamed(Routes.signUp);
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
