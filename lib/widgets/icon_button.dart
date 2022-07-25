// Flutter in-built packages
import 'package:flutter/material.dart';

/// `CustomIconButton`
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.onTap,
    this.color,
  }) : super(key: key);

  /// icon to be displayed
  final IconData icon;

  final Color? color;
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
