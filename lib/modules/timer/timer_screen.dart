// Flutter packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Local imports
import '../../utilities/extensions.dart';
import '../../widgets/icon_button.dart';
import 'timer_controller.dart';

/// TimerScreen
class TimerScreen extends StatelessWidget {
  TimerScreen({Key? key}) : super(key: key);

  /// Initializes TimerScreen Controller.
  final controller = Get.put(TimerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              if (controller.listOfSplits.isEmpty) {
                return SizedBox(height: Get.size.height / 12);
              }
              return Container();
            }),
            Obx(() {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                child: Text(
                  controller.milliSecondsElapsed.toMilliTimeString(),
                  textAlign: TextAlign.center,
                  style: Get.context!.textTheme.headline4!.copyWith(
                    color: Colors.black,
                  ),
                ),
              );
            }),
            Obx(() {
              var items = controller.listOfSplits;
              return ListView.builder(
                shrinkWrap: true,
                controller: ScrollController(),
                itemCount: controller.listOfSplits.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    key: ValueKey(index + 1),
                    leading: Text("${index + 1}"),
                    title: Text(items[index].elapsedTimeString),
                    trailing: Text("+ ${items[index].stopDifferenceTimeString}"),
                  );
                }),
              );
            })
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(() {
        if (controller.milliSecondsElapsed == 0 && !controller.isCounting) {
          return CustomIconButton(
            icon: Icons.play_arrow,
            onTap: controller.updateStopWatch,
          );
        }
        return Row(
          children: [
            Expanded(
              child: CustomIconButton(
                icon: controller.isCounting ? Icons.flag : Icons.stop,
                onTap:
                    controller.isCounting ? controller.splitTimer : controller.resetStopWatch,
              ),
            ),
            Expanded(
              child: CustomIconButton(
                icon: controller.isCounting ? Icons.pause : Icons.play_arrow,
                onTap: controller.updateStopWatch,
              ),
            ),
          ],
        );
      }),
    );
  }
}
