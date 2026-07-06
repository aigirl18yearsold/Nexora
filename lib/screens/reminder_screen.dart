import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reminders"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text("MIT Summer Research"),
              subtitle: const Text("Reminder: 2 days remaining"),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text("Google Solution Challenge"),
              subtitle: const Text("Reminder: 7 days remaining"),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text("Chevening Scholarship"),
              subtitle: const Text("Reminder: 14 days remaining"),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
