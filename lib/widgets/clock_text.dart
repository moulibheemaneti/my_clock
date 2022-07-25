// Flutter in-built packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Text to be displayed on the clock screen
class ClockText extends Text {
  /// Text to be displayed in the clock
  final String text;

  // Constructor
  ClockText({
    Key? key,
    this.text = '',
  }) : super(
          text,
          key: key,
          textAlign: TextAlign.center,
          style: Get.context!.textTheme.headline2!.copyWith(
            color: Colors.black,
          ),
        );

  /// Especially for semicolon text between the clock text
  factory ClockText.semiColonText() {
    return ClockText(text: ':');
  }
}
