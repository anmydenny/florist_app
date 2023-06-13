import 'package:florist_app/src/modules/landing/view/landing_view.dart';
import 'package:florist_app/src/modules/sign_up/%20view/sign_up_view.dart';
import 'package:florist_app/src/modules/sign_up/binding/sign_up_binding.dart';
import 'package:get/get.dart';
import '../modules/sign_in/binding/sign_in_binding.dart';
import '../modules/sign_in/view/sign_in_view.dart';
import '../modules/splash/binding/splash_binding.dart';
import '../modules/splash/view/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.signUp,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
        name: _Paths.landing,
        page: () => const LandingView(),
        // bindings: [LandingBinding()]
    ),
  ];
}