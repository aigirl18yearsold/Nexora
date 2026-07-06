import 'package:flutter/material.dart';

class ManageOpportunitiesScreen extends StatelessWidget {
  const ManageOpportunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Opportunities"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.school),
              title: const Text("MIT Summer Research Program"),
              subtitle: const Text("Published"),
              trailing: const Icon(Icons.edit),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text("Global AI Scholarship"),
              subtitle: const Text("Draft"),
              trailing: const Icon(Icons.edit),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.emoji_events),
              title: const Text("International Hackathon"),
              subtitle: const Text("Published"),
              trailing: const Icon(Icons.edit),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
