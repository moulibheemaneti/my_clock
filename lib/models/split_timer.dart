// Local imports
import '../utilities/extensions.dart';

/// `SplitTimer` is a custom model class which is used to store the split time of the stopwatch.
class SplitTimer {
  /// `milliSecondsElapsed` is the total milliseconds elapsed since the stopwatch started.
  final int milliSecondsElapsed;

  /// `stopDifference` is the difference between the current time and the time when the stopwatch was stopped.
  final int stopDifference;

  SplitTimer({
    required this.milliSecondsElapsed,
    required this.stopDifference,
  });

  /// `elapsedTimeString` is the time elapsed since the stopwatch started.
  String get elapsedTimeString => milliSecondsElapsed.toMilliTimeString();

  /// `stopDifferenceString` is the time elapsed since the stopwatch was stopped.
  String get stopDifferenceTimeString => stopDifference.toMilliTimeString();
}
