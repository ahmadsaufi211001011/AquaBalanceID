import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/crud/data/models/note.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    final noteBox = Hive.box<Note>('notesBox');
    if (noteBox.isNotEmpty) {
      // Jika sudah ada data, navigasi langsung ke halaman utama
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, '/profile');
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f2f2),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 300,
                height: 400,
              ),
              Text(
                'Selamat Datang!',
                style: myTextStyleBold30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Aqua Balace Pendamping dan informasi anda menjaga cairan tubuh dan membantu anda memmahami pentingnya hidrasi bagi kesehatan',
                  textAlign: TextAlign.center,
                  style: myTextStyle14,
                ),
              ),
              20.height,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: AppColor.blue),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/profile');
                  },
                  child: Text(
                    'Lanjut'.toUpperCase(),
                    style: myTextStyle18.copyWith(color: AppColor.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
