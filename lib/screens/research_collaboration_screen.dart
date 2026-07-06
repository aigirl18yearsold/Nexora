import 'package:flutter/material.dart';

class ResearchCollaborationScreen extends StatelessWidget {
  const ResearchCollaborationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Research Collaboration"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.science),
              title: const Text("AI for Healthcare"),
              subtitle: const Text(
                "Need ML Engineer • 3/5 Members",
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Apply"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.biotech),
              title: const Text("Cancer Detection Research"),
              subtitle: const Text(
                "Need Data Analyst • 2/6 Members",
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Apply"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.public),
              title: const Text("Climate Change Study"),
              subtitle: const Text(
                "Need Research Writer • 4/6 Members",
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Apply"),
              ),
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
