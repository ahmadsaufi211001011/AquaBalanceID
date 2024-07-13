import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
  ThemeProvider() {
    _loadTheme();
  }

  void _loadTheme() async {
    var box = await Hive.openBox('settings');
    _isDarkMode = box.get('darkMode', defaultValue: false);
    notifyListeners();
  }

  void toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    var box = await Hive.openBox('settings');
    box.put('darkMode', _isDarkMode);
    notifyListeners();
  }
}
