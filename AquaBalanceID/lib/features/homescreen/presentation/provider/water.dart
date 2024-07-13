import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WaterIntakeModel extends ChangeNotifier {
  // Kebutuhan air harian dalam mililiter berdasarkan usia
  final Map<int, int> _dailyIntake = {
    1: 1300,
    4: 1700,
    9: 2400,
    14: 3300,
  };

  // Batas maksimal asupan air harian dalam mililiter berdasarkan usia
  final Map<int, int> _maxIntake = {
    1: 1500,
    4: 1800,
    9: 2500,
    14: 3500,
  };

  int _age = 1; // Usia default
  int _currentIntake = 0; // Asupan air saat ini

  WaterIntakeModel() {
    // Memuat status currentIntake dari Hive saat inisialisasi
    loadIntake();
  }

  int get dailyIntake => _dailyIntake[_age] ?? 0;
  int get maxIntake => _maxIntake[_age] ?? 0;
  int get currentIntake => _currentIntake;
  int get age => _age;

  void setAge(int age) {
    _age = age;
    _currentIntake = 0; // Reset asupan air saat mengubah usia
    loadIntake();
    notifyListeners();
  }

  void addWater(int amount) {
    if (_currentIntake + amount <= maxIntake) {
      _currentIntake += amount;
      notifyListeners();
      _saveIntake(); // Simpan ke Hive setelah perubahan
    } else {
      // Opsional: Berikan feedback jika asupan melebihi batas maksimal
      _currentIntake = maxIntake;
    }
  }

  void resetIntake() {
    _currentIntake = 0;
    notifyListeners();
    _saveIntake(); // Simpan ke Hive setelah perubahan
  }

  // Fungsi untuk menyimpan status currentIntake ke dalam Hive
  void _saveIntake() async {
    var box = await Hive.openBox<int>('waterBox');
    await box.put('currentIntake', _currentIntake);

    notifyListeners();
  }

  // Fungsi untuk mengambil status currentIntake dari Hive
  void loadIntake() async {
    var box = await Hive.openBox<int>('waterBox');
    _currentIntake = box.get('currentIntake', defaultValue: 0)!;
    notifyListeners();
  }
}
