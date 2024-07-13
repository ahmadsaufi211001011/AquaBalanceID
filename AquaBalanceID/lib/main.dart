import 'package:aqua_balance/app.dart';
import 'package:aqua_balance/features/crud/data/models/note.dart';
import 'package:aqua_balance/features/homescreen/presentation/provider/thme.dart';
import 'package:aqua_balance/features/homescreen/presentation/provider/water.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>('notesBox');
  await Hive.openBox('settings');
  await Hive.openBox<int>('waterBox'); // Buka kotak Hive dengan tipe int
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue, // Ganti dengan warna yang Anda inginkan
  ));
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => WaterIntakeModel(),
        // Load status currentIntake dari Hive
      ),
    ], child: const MyApp()),
  );
}
