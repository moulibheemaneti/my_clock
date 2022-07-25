// Flutter in-built packages
import 'package:flutter/material.dart';

// External packages
import 'package:get/get.dart';

// Local imports
import '../../utilities/extensions.dart';
import '../../widgets/clock_text.dart';
import 'clock_controller.dart';

/// Clock Screen is the main default tab when the app is opened
class ClockScreen extends StatelessWidget {
  ClockScreen({Key? key}) : super(key: key);

  /// Initializing the [ClockController]
  final clockController = Get.put(ClockController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: Get.size.height / 12),
        // Used OBX only here because I need this part to be reactive.
        Obx(() {
          var time = clockController.currentTime;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClockText(text: time.hour.twoDigitString()),
              ClockText.semiColonText(),
              ClockText(text: time.minute.twoDigitString()),
              ClockText.semiColonText(),
              ClockText(text: time.second.twoDigitString()),
            ],
          );
        }),
      ],
    );
  }
}
