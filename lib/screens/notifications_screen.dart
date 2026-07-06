import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text("MIT Summer Research deadline in 2 days"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text("New Hackathon added"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text("Essay review completed"),
          ),

        ],
      ),
    );
  }
}
