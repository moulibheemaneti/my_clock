// Flutter packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Local imports
import 'colors.dart';

/// `ThemeController` is the controller which is used to change the theme of the app.
class ThemeController extends GetxController {
  /// `currentTheme` is the current theme of the app.
  final _currentTheme = MyClockTheme.lightTheme.obs;
  ThemeData get currentTheme => _currentTheme.value;
  set currentTheme(ThemeData value) => _currentTheme.value = value;

  /// `changeTheme` is the method which is used to change the theme of the app.
  void changeTheme() {
    if (currentTheme == MyClockTheme.lightTheme) {
      // If the current theme is light theme, then change it to dark theme.
      currentTheme = MyClockTheme.darkTheme;
    } else {
      // If the current theme is dark theme, then change it to light theme.
      currentTheme = MyClockTheme.lightTheme;
    }
  }
}
