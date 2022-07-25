import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_clock/theme/colors.dart';

class ThemeController extends GetxController {
  final _currentTheme = MyClockTheme.lightTheme.obs;
  ThemeData get currentTheme => _currentTheme.value;
  set currentTheme(ThemeData value) => _currentTheme.value = value;

  void changeTheme() {
    if (currentTheme == MyClockTheme.lightTheme) {
      currentTheme = MyClockTheme.darkTheme;
    } else {
      currentTheme = MyClockTheme.lightTheme;
    }
  }
}
