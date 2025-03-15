import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future<void> push(Widget screen) async {
    await Navigator.push(this, MaterialPageRoute(builder: (context) => screen));
  }
}
