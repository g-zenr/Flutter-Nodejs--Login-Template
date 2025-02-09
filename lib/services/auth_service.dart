import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const String _isLoggedInKey = 'isLoggedIn';
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> login() async {
    await _prefs.setBool(_isLoggedInKey, true);
  }

  static Future<void> logout() async {
    await _prefs.setBool(_isLoggedInKey, false);
  }

  static bool isLoggedIn() {
    return _prefs.getBool(_isLoggedInKey) ?? false;
  }
}
