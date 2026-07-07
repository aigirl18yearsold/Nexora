import 'package:flutter/material.dart';

class SecurityCenterScreen extends StatelessWidget {
  const SecurityCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Security Center"),
      ),
      body: ListView(
        children: const [

          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Enable Biometric Login"),
            secondary: Icon(Icons.fingerprint),
          ),

          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Enable Two-Factor Authentication"),
            secondary: Icon(Icons.verified_user),
          ),

          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("App Lock"),
            secondary: Icon(Icons.lock),
          ),

          ListTile(
            leading: Icon(Icons.password),
            title: Text("Change Password"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            leading: Icon(Icons.devices),
            title: Text("Logged-in Devices"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
