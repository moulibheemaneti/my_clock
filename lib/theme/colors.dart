// Flutter packages
import 'package:flutter/material.dart';

/// `MyClockTheme` is the class which contains the theme data for the whole app.
class MyClockTheme {
  /// `lightTheme` is the theme data for the app theme in darkMode.
  static ThemeData lightTheme = ThemeData(
    bottomAppBarColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  );

  /// `darkTheme` is the theme data for the app theme in darkMode.
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
