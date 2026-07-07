import 'package:flutter/material.dart';

class PrivacySettingsScreen extends StatelessWidget {
  const PrivacySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Settings"),
      ),
      body: ListView(
        children: const [

          SwitchListTile(
            value: true,
            onChanged: null,
            title: Text("Public Profile"),
          ),

          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Show Email"),
          ),

          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Show Phone Number"),
          ),

          SwitchListTile(
            value: true,
            onChanged: null,
            title: Text("Allow Mentor Messages"),
          ),

          SwitchListTile(
            value: true,
            onChanged: null,
            title: Text("Share Anonymous Analytics"),
          ),

          ListTile(
            leading: Icon(Icons.delete_forever),
            title: Text("Delete My Account"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
