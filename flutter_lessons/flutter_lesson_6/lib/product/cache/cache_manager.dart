import 'package:flutter_lesson_6/product/cache/cache_key_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  Future<bool> setString(CacheKeyEnum key, String value) async {
    final shared = await SharedPreferences.getInstance();
    final isSuccess = await shared.setString(key.name, value);
    return isSuccess;
  }

  Future<String?> getString(CacheKeyEnum key) async {
    final shared = await SharedPreferences.getInstance();
    final data = shared.getString(key.name);
    return data;
  }
}
