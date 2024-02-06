import 'package:shared_preferences/shared_preferences.dart';

class MyPreference {
  static late final SharedPreferences _pref;

  static void init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static void setUser(String username) {
    _pref.setString("user", username);
  }

  static String getUserName() {
    return _pref.getString("user") ?? "";
  }

  static void setMainImage(String img) {
    _pref.setString('bg', img);
  }

  static String getMainImage() {
    return _pref.getString('bg') ?? 'assets/images/img_bg1.jpg';
  }

  static bool? isLogin() {
    return _pref.getBool("login");
  }

  static void saveToken(String token) {
    _pref.setString("token", token);
  }

  static String? getToken() {
    return _pref.getString("token");
  }

  static void saveAccessToken(String token) {
    _pref.setString("accessToken", token);
  }

  static String? getAccessToken() {
    return _pref.getString("accessToken");
  }

  static void saveRefreshToken(String token) {
    _pref.setString("refreshToken", token);
  }

  static String? getRefreshToken() {
    return _pref.getString("refreshToken");
  }

  static void setPinCode(String pinCode) {
    _pref.setString("pin", pinCode);
  }

  static String getPinCode() {
    return _pref.getString("pin") ?? "";
  }

  static void setLanguage(String language) {
    _pref.setString("language", language);
  }

  static String getLanguage() {
    return _pref.getString("language") ?? "uz";
  }

  static void registerUser() {
    _pref.setBool("register", true);
  }

  static void loginUser() {
    _pref.setBool("login", true);
  }

  static void unRegisterUser() {
    _pref.setBool("register", false);
  }

  static bool isRegistered() {
    return _pref.getBool("register") ?? false;
  }
}
