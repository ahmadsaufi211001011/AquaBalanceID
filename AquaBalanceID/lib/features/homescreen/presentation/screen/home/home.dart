import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/homescreen/presentation/provider/water.dart';
import 'package:aqua_balance/features/homescreen/presentation/screen/home/mydropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final waterIntakeModel = context.watch<WaterIntakeModel>();
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CustomPaint(
                        size: const Size(300, 400), // Ukuran dari widget gelas
                        painter: GelasPainter(),
                      ),
                      Positioned(
                        top: 135,
                        left: 17,
                        child: Consumer<WaterIntakeModel>(
                          builder: (context, model, child) {
                            return Column(
                              children: [
                                Text(
                                  'Asupan Air Harian Anda : ${model.dailyIntake} mL',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'Asupan Saat Ini',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Positioned(
                          top: 250,
                          left: 130,
                          child: Consumer<WaterIntakeModel>(
                            builder: (context, model, child) {
                              return Row(
                                children: [
                                  Text(
                                    '${context.watch<WaterIntakeModel>().currentIntake}',
                                  ),
                                  Text(' ML')
                                ],
                              );
                            },
                          ))
                    ],
                  ),
                  10.height,
                  MyDropdown(waterIntakeModel: waterIntakeModel),
                  10.height,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: AppColor.white,
                          backgroundColor: Colors.blue,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20),
                                  right: Radius.circular(20))),
                          minimumSize: const Size(120, 50)),
                      onPressed: () => waterIntakeModel
                          .addWater(200), // Tambah 250 mL Tambah 250 mL
                      child: Text(
                        'Tekan',
                        style: myTextStyleBold16,
                      )),
                  10.height,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: AppColor.white,
                          backgroundColor: Colors.blue,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20),
                                  right: Radius.circular(20))),
                          minimumSize: const Size(120, 50)),
                      onPressed: () =>
                          waterIntakeModel.resetIntake(), // Tambah 250 mL
                      child: Text(
                        'Reset',
                        style: myTextStyleBold16,
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class GelasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 53, 147, 224)
      ..style = PaintingStyle.fill;

    Path path = Path();
    // Membuat bentuk gelas sederhana
    path.moveTo(size.width * 0.25, size.height * 0.5);
    path.lineTo(size.width * 0.75, size.height * 0.5);
    path.lineTo(size.width * 0.6, size.height * 0.9);
    path.lineTo(size.width * 0.4, size.height * 0.9);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
