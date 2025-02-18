import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemeProvider extends ChangeNotifier {
  final String isDarkKey = "IsDark";

  bool _isDark = false;

  get themeValue {
    updateThemeOnStart();
    return _isDark;
  }

  set themeValue(value) {
    _isDark = value;

    // set theme in prefs
    setThemeOnPrefs(value);
    notifyListeners();
  }

  setThemeOnPrefs(bool value) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool(isDarkKey, value);
  }

  updateThemeOnStart() async {
    var prefs = await SharedPreferences.getInstance();
    var isDarkCheck = prefs.getBool(isDarkKey);

    if (isDarkCheck != null) {
      _isDark = isDarkCheck;
    } else {
      _isDark = false;
    }

    notifyListeners();
  }
}
