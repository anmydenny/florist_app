import 'package:florist_app/src/modules/forgot_password/controller/forgot_password_controller.dart';
import 'package:florist_app/src/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_styles.dart';
import '../../../widgets/app_button.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({Key? key}) : super(key: key);
  String? username = '';
  final _forgotPasswordFormKey = GlobalKey<FormState>();

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
          key: _forgotPasswordFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Forgot Password',
                style: AppTextStyles.h1,
              ),
              const SizedBox(
                height: 60,
              ),
              AppTextFiled(
                controller: controller.userNameController,
                keyboardType: TextInputType.text,
                hintText: 'xyz@gmail.com',
                labelText: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  }
                  username = value;
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              AppButton(
                  text: "Send",
                  onPressed: controller.sendClick),
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
