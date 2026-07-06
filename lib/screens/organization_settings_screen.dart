import 'package:flutter/material.dart';

class OrganizationSettingsScreen extends StatelessWidget {
  const OrganizationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organization Settings"),
      ),
      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.business),
            title: Text("Organization Information"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy & Security"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification Settings"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.people),
            title: Text("Manage Administrators"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
