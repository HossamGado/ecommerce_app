import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? prefs;

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setData<T>(String key, T value) async {
    if (prefs == null) return false;

    if (value is String) return await prefs!.setString(key, value);
    if (value is int) return await prefs!.setInt(key, value);
    if (value is bool) return await prefs!.setBool(key, value);
    if (value is double) return await prefs!.setDouble(key, value);
    if (value is List<String>) return await prefs!.setStringList(key, value);

    throw Exception("Type not supported");
  }

  static T? getData<T>(String key, {T? defaultValue}) {
    if (prefs == null) return defaultValue;
    return prefs!.get(key) as T? ?? defaultValue;
  }


  static Future<bool> removeData(String key) async {
    if (prefs == null) return false;
    return await prefs!.remove(key);
  }


  static Future<bool> clearData() async {
    if (prefs == null) return false;
    return await prefs!.clear();
  }
}
