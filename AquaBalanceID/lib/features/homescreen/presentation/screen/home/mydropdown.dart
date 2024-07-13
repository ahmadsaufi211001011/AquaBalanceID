import 'package:aqua_balance/features/homescreen/presentation/provider/water.dart';
import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  const MyDropdown({
    super.key,
    required this.waterIntakeModel,
  });

  final WaterIntakeModel waterIntakeModel;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: waterIntakeModel.age,
      items: <DropdownMenuItem<int>>[
        DropdownMenuItem<int>(
          value: 1,
          child: Text('Umur 1-3 Tahun'),
        ),
        DropdownMenuItem<int>(
          value: 4,
          child: Text('Umur 4-8 Tahun'),
        ),
        DropdownMenuItem<int>(
          value: 9,
          child: Text('Umur 9-13 Tahun'),
        ),
        DropdownMenuItem<int>(
          value: 14,
          child: Text('Umur 14-18 Tahun'),
        ),
      ],
      onChanged: (value) {
        if (value != null) {
          waterIntakeModel.setAge(value);
        }
      },
    );
  }
}
