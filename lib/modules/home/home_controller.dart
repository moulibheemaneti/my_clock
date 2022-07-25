import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  List<Tab> get tabs => <Tab>[
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

  final _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(
      vsync: this,
      length: tabs.length,
    );
    tabController.addListener(() {
      currentIndex = tabController.index;
    });
    super.onInit();
  }

  @override
  void onClose() {
    tabController.removeListener(() {});
    tabController.dispose();
    super.onClose();
  }
}
