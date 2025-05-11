import 'package:flutter/material.dart';

extension StringExtension on String {
  ThemeMode get getFromCache {
    if (this == ThemeMode.dark.name) {
      return ThemeMode.light;
    }
    if (this == ThemeMode.dark.name) {
      return ThemeMode.dark;
    }
    return ThemeMode.light;
  }
}
