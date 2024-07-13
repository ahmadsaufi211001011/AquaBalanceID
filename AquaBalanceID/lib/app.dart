import 'package:aqua_balance/config/config.dart';
import 'package:aqua_balance/features/homescreen/presentation/provider/thme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'AquaBalanceID',
      initialRoute: '/',
      themeMode: themeProvider.themeMode,
      theme: lightTheme,
      darkTheme: darkMode,
      onGenerateRoute: RouteGenerator.genereteRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
