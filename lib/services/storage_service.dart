import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  Future<void> saveData(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', value);
  }

  Future<String?> getData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  Future<void> clearData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
  }
}
