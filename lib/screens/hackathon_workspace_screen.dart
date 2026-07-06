import 'package:flutter/material.dart';

class HackathonWorkspaceScreen extends StatelessWidget {
  const HackathonWorkspaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hackathon Workspace"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const Card(
            child: ListTile(
              leading: Icon(Icons.flag),
              title: Text("USAII Global AI Hackathon"),
              subtitle: Text("Team: Nexora Innovators"),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.task_alt),
              title: Text("Tasks"),
              subtitle: Text("5 Completed • 3 Pending"),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.folder),
              title: Text("Shared Files"),
              subtitle: Text("Proposal.pdf, Demo.mp4"),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.code),
              title: Text("GitHub Repository"),
              subtitle: Text("Connected"),
            ),
          ),

          const Card(
            child: ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Next Meeting"),
              subtitle: Text("Tomorrow • 7:00 PM"),
            ),
          ),

        ],
      ),
    );
  }
}
