// Flutter packages
import 'package:flutter/material.dart';

/// `SettingsScreen` is the screen which is used to display the settings of the app.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text(
              "Change Theme",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            trailing: Switch.adaptive(
              value: true,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
