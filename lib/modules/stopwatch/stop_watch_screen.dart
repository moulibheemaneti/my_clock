// Flutter in-built packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// External packages
import 'package:get/get.dart';

// Local imports
import '../../utilities/extensions.dart';
import '../../widgets/icon_button.dart';
import 'stop_watch_controller.dart';

/// StopWatchScreen
class StopWatchScreen extends StatelessWidget {
  StopWatchScreen({Key? key}) : super(key: key);

  /// Initializing the controller wh
  final controller = Get.put(StopWatchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.size.height / 12),
            Obx(() {
              if (controller.showTimePicker) {
                return CupertinoTimerPicker(
                  alignment: Alignment.topCenter,
                  mode: CupertinoTimerPickerMode.hms,
                  initialTimerDuration: controller.defaultTime,
                  onTimerDurationChanged: (Duration newDate) {
                    controller.defaultTime = newDate;
                  },
                );
              } else {
                return Obx(() {
                  return Text(
                    // "${timeToDisplay.hours}:${timeToDisplay.minutes}:${timeToDisplay.seconds}",
                    controller.secondsElapsed.toTimeString(),
                    textAlign: TextAlign.center,
                    style: Get.context!.textTheme.headline3!.copyWith(
                      color: Colors.black,
                    ),
                  );
                });
              }
            }),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(() {
        if (controller.secondsElapsed == 0 && !controller.isCounting) {
          return CustomIconButton(
            icon: Icons.play_arrow,
            onTap: controller.updateStopWatch,
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              icon: Icons.stop,
              onTap: controller.resetStopWatch,
            ),
            CustomIconButton(
              icon: controller.isCounting ? Icons.pause : Icons.play_arrow,
              onTap: controller.updateStopWatch,
            ),
          ],
        );
      }),
    );
  }
}
