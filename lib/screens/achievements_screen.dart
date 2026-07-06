import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Achievements"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text("Profile Completed"),
            subtitle: Text("Completed 100% profile information"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("Explorer"),
            subtitle: Text("Saved your first opportunity"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.school),
            title: Text("Applicant"),
            subtitle: Text("Applied to your first opportunity"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.workspace_premium),
            title: Text("Top Learner"),
            subtitle: Text("Completed five learning milestones"),
          ),
        ],
      ),
    );
  }
}
