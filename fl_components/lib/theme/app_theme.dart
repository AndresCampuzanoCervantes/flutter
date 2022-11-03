import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xff26a69a);
  static final ThemeData lighTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 3,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
      shape: StadiumBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 2,
      ),
    ),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        elevation: 3,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.black);
}
