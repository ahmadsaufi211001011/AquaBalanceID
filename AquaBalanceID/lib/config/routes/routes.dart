import 'package:aqua_balance/core/error/error_page.dart';
import 'package:aqua_balance/features/crud/presentation/pages/person/edit_profile.dart';
import 'package:aqua_balance/features/homescreen/presentation/screen/book/artikel_book2.dart';
import 'package:aqua_balance/features/homescreen/presentation/screen/book/artikel_book3.dart';
import '../../features/homescreen/home_screen_routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> genereteRoute(
    RouteSettings settings,
  ) {
    final args = settings.name;
    switch (args) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const Welcome(),
        );
      case "/profile":
        return MaterialPageRoute(
          builder: (context) => AddNotePage(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        );
      case "/settings":
        return MaterialPageRoute(
          builder: (context) => const SettingScreen(),
        );
      case "/editprofile":
        return MaterialPageRoute(
          builder: (context) => EditProfile(),
        );

      case "/book":
        return MaterialPageRoute(
          builder: (context) => const Book(),
        );
      case "/book2":
        return MaterialPageRoute(
          builder: (context) => const Book2(),
        );
      case "/book3":
        return MaterialPageRoute(
          builder: (context) => const Book3(),
        );
      case "/readartikel":
        return MaterialPageRoute(
          builder: (context) => const ArtikelBook(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
