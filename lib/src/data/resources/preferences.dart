import 'package:florist_app/src/data/resources/preference_helper.dart';
import '../../utils/app_constants.dart';

class Preferences {
  static Future<String> getToken() => PreferencesHelper.getString(AppConstants.TOKEN);

  static Future setToken(String value) => PreferencesHelper.setString(AppConstants.TOKEN, value);

  static Future clear() =>PreferencesHelper.clearAll();
}