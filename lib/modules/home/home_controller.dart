// Flutter packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// `HomeController` is the controller for the `HomeScreen`.
class HomeController extends GetxController with GetTickerProviderStateMixin {
  /// `tabs` are the tabs used in homescreen
  List<Tab> get tabs {
    return <Tab>[
        Tab(
          icon: Icon(
            currentIndex != 0 ? Icons.watch_later_outlined : Icons.watch_later,
            color: Colors.black,
          ),
        ),
        Tab(
          icon: Icon(
            currentIndex != 1 ? Icons.timer_outlined : Icons.timer,
            color: Colors.black,
          ),
        ),
        Tab(
          icon: Icon(
            currentIndex != 2 ? Icons.hourglass_empty_outlined : Icons.hourglass_full_outlined,
            color: Colors.black,
          ),
        ),
      ];
  }

  /// Current index of the tabbar
  final _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  /// TabController for the tabbar. It is initialized in the `initState` method.
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(
      vsync: this,
      length: tabs.length,
    );
    // Added a listener for tabcontroller to list to the changes of current index in tabbar.
    tabController.addListener(() {
      currentIndex = tabController.index;
    });
    super.onInit();
  }

  @override
  void onClose() {
    // When the controller is closed the listener of tabcontroller is removed.
    // And it is disposed. This is done to avoid memory leaks.
    tabController.removeListener(() {});
    tabController.dispose();
    super.onClose();
  }
}
