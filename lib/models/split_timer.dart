// Local importsw
import '../utilities/extensions.dart';

class SplitTimer {
  int milliSecondsElapsed;
  int stopDifference;

  SplitTimer({
    required this.milliSecondsElapsed,
    required this.stopDifference,
  });

  String get elapsedTimeString => milliSecondsElapsed.toMilliTimeString();
  String get stopDifferenceTimeString => stopDifference.toMilliTimeString();
}
