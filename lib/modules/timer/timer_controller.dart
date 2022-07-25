// Dart packages
import 'dart:async';

// External packages
import 'package:get/get.dart';
import 'package:my_clock/models/split_timer.dart';

/// StopWatchController
class TimerController extends GetxController {
  /// determines whether timer is counting or not
  final _isCounting = false.obs;

  /// getter of isCounting
  bool get isCounting => _isCounting.value;

  /// setter of isCounting
  set isCounting(bool value) => _isCounting.value = value;

  /// Milliseconds elapsed since the timer is on.
  final _milliSecondsElapsed = 0.obs;

  /// getter of milliSecondsElapsed
  int get milliSecondsElapsed => _milliSecondsElapsed.value;

  /// setter of milliSecondsElapsed
  set milliSecondsElapsed(int value) => _milliSecondsElapsed.value = value;

  /// Stop difference
  final _stopDifference = 0.obs;
  int get stopDifference => _stopDifference.value;
  set stopDifference(int value) => _stopDifference.value = value;

  var listOfStops = <SplitTimer>[].obs;

  void updateStopWatch() {
    isCounting = !isCounting;
    Timer.periodic(const Duration(milliseconds: 1), (timer) {
      if (isCounting) {
        milliSecondsElapsed = milliSecondsElapsed + 1;
        stopDifference = stopDifference + 1;
      } else {
        timer.cancel();
      }
    });
  }

  void resetStopWatch() {
    milliSecondsElapsed = 0;
    stopDifference = 0;
    isCounting = false;
    listOfStops.clear();
  }

  void splitTimer() {
    var splitTimerObject = SplitTimer(
      milliSecondsElapsed: milliSecondsElapsed,
      stopDifference: stopDifference,
    );
    listOfStops.add(splitTimerObject);
    stopDifference = 0;
  }
}
