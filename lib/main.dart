// Flutter in-built packages
import 'package:flutter/material.dart';

// External packages
import 'package:get/get.dart';

// Local imports
import 'modules/clock/clock_controller.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/home_screen.dart';
import 'modules/stopwatch/stop_watch_controller.dart';
import 'modules/timer/timer_controller.dart';
import 'theme/theme_controller.dart';

/// Entry point of the app
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

/// MyApp
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: 'My Clock',
        debugShowCheckedModeBanner: false,
        theme: themeController.currentTheme,
        initialBinding: InitialBindings(),
        home: HomeScreen(),
      );
    });
  }
}

/// Initial bindings are the bindings which are initialized on the launch of the app.
class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(ClockController());
    Get.put(StopWatchController());
    Get.put(TimerController());
  }
}
