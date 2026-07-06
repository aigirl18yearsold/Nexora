import 'package:flutter/material.dart';

class DeadlineCalendarScreen extends StatelessWidget {
  const DeadlineCalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deadline Calendar"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("MIT Summer Research"),
            subtitle: Text("Deadline: July 25"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Google Solution Challenge"),
            subtitle: Text("Deadline: August 10"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Chevening Scholarship"),
            subtitle: Text("Deadline: September 2"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("NASA Space Apps Challenge"),
            subtitle: Text("Deadline: October 5"),
          ),
        ],
      ),
    );
  }
}
