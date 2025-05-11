import 'package:flutter/material.dart';

extension ThemeModExtension on ThemeMode {
  String get stringValue {
    return this == ThemeMode.light ? "Acik Tema" : "Kapali Tema";
  }

  ThemeMode getFromCache(String value) {
    if (value == ThemeMode.light.name) {
      return ThemeMode.light;
    }
    if (value == ThemeMode.dark.name) {
      return ThemeMode.dark;
    }

    return ThemeMode.light;
  }
}
