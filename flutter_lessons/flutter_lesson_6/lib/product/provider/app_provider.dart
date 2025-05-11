import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  void setTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }

  void changeTheme(bool isLight) {
    theme = isLight ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
