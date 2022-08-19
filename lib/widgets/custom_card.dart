// Flutter packages
import 'package:flutter/material.dart';

/// Custom cards are used in the settings screen to display the options.
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      child: ListTile(),
    );
  }
}
