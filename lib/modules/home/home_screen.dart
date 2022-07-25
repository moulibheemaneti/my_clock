// Flutter in-built packages
import 'package:flutter/material.dart';

// External packages
import 'package:get/get.dart';

// Local imports
import '../../theme/theme_controller.dart';
import '../clock/clock_screen.dart';
import '../stopwatch/stop_watch_screen.dart';
import '../timer/timer_screen.dart';
import 'home_controller.dart';

/// HomeScreen
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  /// Initializes HomeScreen Controller.
  final homeController = Get.put(HomeController());
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return DefaultTabController(
          length: homeController.tabs.length,
          animationDuration: const Duration(milliseconds: 300),
          child: Scaffold(
            // backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: TabBar(
                controller: homeController.tabController,
                indicatorColor: Colors.black,
                tabs: homeController.tabs,
                isScrollable: true,
              ),
              centerTitle: true,
            ),
            body: Center(
              child: TabBarView(
                controller: homeController.tabController,
                children: <Widget>[
                  ClockScreen(),
                  TimerScreen(),
                  StopWatchScreen(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
