import 'package:flutter/material.dart';

class NotificationCenterScreen extends StatelessWidget {
  const NotificationCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text("Application Accepted"),
              subtitle: Text(
                "Congratulations! Your application has been accepted.",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.event),
              title: Text("Upcoming Deadline"),
              subtitle: Text(
                "MIT Summer Research closes in 2 days.",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.groups),
              title: Text("New Team Invitation"),
              subtitle: Text(
                "You have been invited to join AI Healthcare Team.",
              ),
            ),
          ),

        ],
      ),
    );
  }
}
