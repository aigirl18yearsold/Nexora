import 'package:flutter/material.dart';

class AccessibilitySettingsScreen extends StatelessWidget {
  const AccessibilitySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accessibility"),
      ),
      body: ListView(
        children: [

          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text("High Contrast Mode"),
          ),

          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text("Screen Reader Support"),
          ),

          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text("Reduce Animations"),
          ),

          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text("Voice Navigation"),
          ),

          ListTile(
            leading: const Icon(Icons.text_fields),
            title: const Text("Font Size"),
            subtitle: const Text("Medium"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
