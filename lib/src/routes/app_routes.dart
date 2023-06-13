part of '../../src/routes/app_pages.dart';

abstract class Routes {
  Routes._();

  static const splash = _Paths.splash;
  static const signIn = _Paths.signIn;
  static const signUp = _Paths.signUp;
  static const forgotPassword = _Paths.forgotPassword;
  static const landing = _Paths.landing;

}

abstract class _Paths {
  _Paths._();

  static const splash = "/splash";
  static const signUp = "/signUp";
  static const signIn = "/signIn";
  static const forgotPassword = "/forgotPassword";
  static const landing = "/landing";
}