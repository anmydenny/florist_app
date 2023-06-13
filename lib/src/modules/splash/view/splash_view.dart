import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_logo.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppLogo();
  }
}
