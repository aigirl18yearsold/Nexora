import 'package:flutter/material.dart';

class ResearchWorkspaceScreen extends StatelessWidget {
  const ResearchWorkspaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Research Workspace"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.group_add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.groups),
              title: Text("AI Healthcare Research"),
              subtitle: Text("5 Team Members • Active"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.biotech),
              title: Text("Genomics Project"),
              subtitle: Text("3 Team Members • Planning"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.public),
              title: Text("Climate Research"),
              subtitle: Text("8 Team Members • Ongoing"),
            ),
          ),

        ],
      ),
    );
  }
}
