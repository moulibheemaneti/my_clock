// Flutter packages
import 'package:flutter/material.dart';

/// `CustomIconButton` is a custom icon button which is used in the app.
/// It is used for play, pause,split timer and reset buttons.
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.onTap,
    this.color,
  }) : super(key: key);

  /// icon to be displayed
  final IconData icon;

  /// Color of the icon
  final Color? color;

  /// Function to be called on tap
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Icon(
            icon,
            color: color ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
