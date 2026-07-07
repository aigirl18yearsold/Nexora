import 'package:flutter/material.dart';

class AdmissionsTrackerScreen extends StatelessWidget {
  const AdmissionsTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admissions Tracker"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("MIT"),
              subtitle: Text("Application In Progress"),
              trailing: Icon(Icons.hourglass_top),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Stanford"),
              subtitle: Text("Documents Pending"),
              trailing: Icon(Icons.description),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Oxford"),
              subtitle: Text("Submitted"),
              trailing: Icon(Icons.check_circle),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Cambridge"),
              subtitle: Text("Not Started"),
              trailing: Icon(Icons.radio_button_unchecked),
            ),
          ),

        ],
      ),
    );
  }
}
