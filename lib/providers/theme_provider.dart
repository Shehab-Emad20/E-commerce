import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  static const THEME_STATUS = "THEME_STATUS";
  bool _darkThem = false;
  bool get getIsDarkTheme => _darkThem;
  ThemeProvider() {
    getTheme();
  }
  Future<void> setDarkThem({required bool themeValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, themeValue);
    _darkThem = themeValue;
    notifyListeners();
  }

  Future<void> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _darkThem = prefs.getBool(THEME_STATUS) ?? false;
    notifyListeners();
  }
}
