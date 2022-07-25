import 'package:flutter/material.dart';

class MyClockTheme {
  static ThemeData lightTheme = ThemeData(
    bottomAppBarColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    // bottomAppBarColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 0,
      color: Colors.black,
    ),
  );
}
