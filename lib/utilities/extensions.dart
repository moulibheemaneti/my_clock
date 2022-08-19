/// `IntegerExtensions` provides a set of extensions for `int` type.
extension IntegerExtensions on int {
  /// Returns the [int] value as a [String] with the specified [radix].
  String toRadixString(int radix) {
    return this.toRadixString(radix);
  }

  String twoDigitString() {
    return "$this".padLeft(2, '0');
    // return toString().padLeft(2, '0');
  }

  int hoursToMinutes() {
    return this * 60;
  }

  int minutesToSeconds() {
    return this * 60;
  }

  int secondsToMilliseconds() {
    return this * 1000;
  }

  int secondsToMinutes() {
    return this ~/ 60 < 60 ? this ~/ 60 : 0;
  }

  int minutesToHours() {
    return this ~/ 60;
  }

  int secondsToHours() {
    return this ~/ 3600;
  }

  String toMilliTimeString() {
    String milliSeconds = (this % 1000).toString().padLeft(3, '0');
    String seconds = (this ~/ 1000).twoDigitString();
    int intSeconds = int.parse(seconds);
    String minutes = intSeconds.secondsToMinutes().twoDigitString();
    String hours = intSeconds.secondsToHours().twoDigitString();
    String time = '$hours:$minutes:$seconds:$milliSeconds';
    return time;
  }

  String toTimeString() {
    String seconds = (this % 60).twoDigitString();
    String minutes = secondsToMinutes().twoDigitString();
    String hours = secondsToHours().twoDigitString();
    String time = '$hours:$minutes:$seconds';
    return time;
  }

  Duration toDuration() {
    int seconds = (this % 60);
    int minutes = secondsToMinutes();
    int hours = secondsToHours();
    Duration time = Duration(
      seconds: seconds,
      minutes: minutes,
      hours: hours,
    );
    return time;
  }
}

extension BooleanExtensions on bool {
  bool get isTrue => this;

  bool get isFalse => !this;

  bool toggle() {
    return !this;
  }
}
