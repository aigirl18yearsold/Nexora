import 'package:flutter/material.dart';

class AnnouncementFeedScreen extends StatelessWidget {
  const AnnouncementFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Announcements"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.campaign),
              title: Text("Global AI Hackathon Registration Open"),
              subtitle: Text(
                "Register before July 30 to secure your place.",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("MIT Summer Research Applications"),
              subtitle: Text(
                "Applications are now open for international students.",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("New Scholarship Available"),
              subtitle: Text(
                "The Future Leaders Scholarship is accepting applications.",
              ),
            ),
          ),

        ],
      ),
    );
  }
}
