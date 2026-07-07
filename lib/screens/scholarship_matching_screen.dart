import 'package:flutter/material.dart';

class ScholarshipMatchingScreen extends StatelessWidget {
  const ScholarshipMatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scholarship Matching"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Knight-Hennessy Scholars"),
              subtitle: Text(
                "United States • Fully Funded",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Chevening Scholarship"),
              subtitle: Text(
                "United Kingdom • Fully Funded",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.public),
              title: Text("Erasmus Mundus"),
              subtitle: Text(
                "Europe • Multiple Universities",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.emoji_events),
              title: Text("MEXT Scholarship"),
              subtitle: Text(
                "Japan • Fully Funded",
              ),
            ),
          ),

        ],
      ),
    );
  }
}
