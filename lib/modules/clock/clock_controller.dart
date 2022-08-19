// Dart package
import 'dart:async';

// Flutter packages
import 'package:get/get.dart';

/// ClockController is the controller of the clock tab or clock screen.
/// It updates the current time and sends it to the UI to be displayed.
class ClockController extends GetxController {
  /// Current time
  final _currentTime = DateTime.now().obs;

  /// getter of Current time
  DateTime get currentTime => _currentTime.value;

  /// setter of current time
  set currentTime(DateTime value) => _currentTime.value = value;

  /// update the current time every second. So the accuracy is one second here.
  /// Since the updateTime function is not called by user interaction, it should 
  /// be instantiated along with this controller.
  void updateTime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      currentTime = DateTime.now();
    });
  }

  @override
  void onInit() {
    // Initialize updateTime() function when the controller gets initialized.
    // Or else the current won't trigger every second.
    updateTime();
    super.onInit();
  }
}
