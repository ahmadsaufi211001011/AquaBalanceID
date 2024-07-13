import 'package:aqua_balance/features/homescreen/presentation/provider/water.dart';
import 'package:flutter_test/flutter_test.dart'; // Ganti dengan path yang sesuai

void main() {
  group('WaterIntakeModel', () {
    late WaterIntakeModel waterIntakeModel;

    setUp(() {
      waterIntakeModel = WaterIntakeModel();
    });

    test('addWater updates currentIntake correctly', () {
      // Verify initial state
      expect(waterIntakeModel.currentIntake, 0);

      // Add water and verify
      waterIntakeModel.addWater(500);
      expect(waterIntakeModel.currentIntake, 500);
    });

    test('addWater does not exceed maxIntake', () {
      // Verify initial state
      expect(waterIntakeModel.currentIntake, 0);

      // Add water more than max intake and verify it is capped at maxIntake
      waterIntakeModel.addWater(1600);
      expect(waterIntakeModel.currentIntake, waterIntakeModel.maxIntake);
    });
  });
}
