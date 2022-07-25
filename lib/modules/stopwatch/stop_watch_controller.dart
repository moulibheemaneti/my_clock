// Dart packages
import 'dart:async';

// Flutter in-built packages
import 'package:flutter/material.dart';

// External packages
import 'package:get/get.dart';

/// StopWatchController
class StopWatchController extends GetxController {
  /// Determines whether the counter is running or not.
  /// If not running then the stopwatch might have been paused or stopped
  final _isCounting = false.obs;
  bool get isCounting => _isCounting.value;
  set isCounting(bool value) => _isCounting.value = value;

  /// Tells many seconds to be still elapsed
  final _secondsElapsed = 0.obs;
  int get secondsElapsed => _secondsElapsed.value;
  set secondsElapsed(int value) => _secondsElapsed.value = value;

  /// Default time of the Cupertino Time Picker
  final _defaultTime = Duration.zero.obs;
  Duration get defaultTime => _defaultTime.value;
  set defaultTime(Duration value) => _defaultTime.value = value;

  /// Whether to show the time picker or not.
  final _showTimePicker = true.obs;
  bool get showTimePicker => _showTimePicker.value;
  set showTimePicker(bool value) => _showTimePicker.value = value;

  /// Update Stop watch.
  /// This function handles, to start, to pause, to resume or 
  /// to end (when the timer counts down and ticks 0).
  void updateStopWatch() {
    if (defaultTime == Duration.zero) {
      return;
    } else if (secondsElapsed == 0) {
      secondsElapsed = defaultTime.inSeconds;
    }
    showTimePicker = false;
    isCounting = !isCounting;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (isCounting && secondsElapsed != 0) {
        secondsElapsed = secondsElapsed - 1;
      } else {
        timer.cancel();
        isCounting = false;
        debugPrint("timer stopped");
      }
      if (secondsElapsed == 0) {
        showTimePicker = true;
        isCounting = false;
        timer.cancel();
      }
    });
  }

  /// Reset stop watch
  void resetStopWatch() {
    secondsElapsed = 0;
    showTimePicker = true;
    isCounting = false;
  }
}
