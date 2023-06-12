import 'package:florist_app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'modules/splash/binding/splash_binding.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
    void initState() {
      super.initState();
    }
    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        title: "Loyalty App",
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        initialBinding: SplashBinding(),
        fallbackLocale: const Locale('en', 'US'),
        defaultTransition: Transition.fadeIn,
        builder: EasyLoading.init(),
      );
  }
}
