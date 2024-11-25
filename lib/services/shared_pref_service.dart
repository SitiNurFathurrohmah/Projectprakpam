import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  // Menyimpan data login
  static Future<void> saveUser(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
  }

  // Mengambil data login
  static Future<Map<String, String>> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? email = prefs.getString('email');
    String? password = prefs.getString('password');
    return {'email': email ?? '', 'password': password ?? ''};
  }

  // Menghapus data login
  static Future<void> clearUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
