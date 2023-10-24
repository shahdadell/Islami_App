import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == ThemeMode) return;
    currentTheme = newTheme;

    notifyListeners();
  }

  changeLanguage(String newLanguage) {
    if (currentLocal == newLanguage) return;
    currentLocal = newLanguage;
    notifyListeners();
  }

  bool isDarkTheme() {
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage() {
    return isDarkTheme()
        ? "assets/images2/dark_bg@3x.png"
        : "assets/images2/default.png";
  }
}
