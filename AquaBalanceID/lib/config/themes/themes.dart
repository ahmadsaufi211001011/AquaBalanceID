import 'package:aqua_balance/config/config.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  primarySwatch: AppColor.primaryColor,
  scaffoldBackgroundColor: AppColor.grey100,
  primaryColorLight: AppColor.grey300,
  brightness: Brightness.light,
  primaryColor: AppColor.white, // warna utama untuk tema terang
  iconTheme: IconThemeData(color: AppColor.blue),
);

ThemeData darkMode = ThemeData(
    fontFamily: 'Poppins',
    primarySwatch: AppColor.primaryColor,
    brightness: Brightness.dark,
    primaryColor: AppColor.black,
    primaryColorDark: AppColor.black);
