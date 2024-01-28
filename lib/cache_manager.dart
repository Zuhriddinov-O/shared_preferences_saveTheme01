import 'package:shared_preferences/shared_preferences.dart';

class CacheImpl extends CacheManager {
  @override
  Future<int> getTheme() async {
    final shared = await SharedPreferences.getInstance();
    return shared.getInt("index") ?? 0;
  }

  @override
  Future<void> saveTheme(int index) async {
    final shared = await SharedPreferences.getInstance();
    shared.setInt("index", index);
  }
}

abstract class CacheManager {
  Future<void> saveTheme(int index);

  Future<int> getTheme();
}
