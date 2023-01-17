import 'package:ai_image_generetor/usecases/local_storage_service.dart';
import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  static bool _isDark = false;
  final String _key = 'currenttheme';

  MyTheme() {
    readThemeOnLocalStorage(_key).then((value) {
      _isDark = value;
      notifyListeners();
    });
  }

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark = !_isDark;
    saveThemeOnLocalStorage(_isDark, _key);
    notifyListeners();
  }

  bool get() {
    return _isDark;
  }
}
