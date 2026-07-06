import 'package:flutter/material.dart';

class AIDashboardScreen extends StatelessWidget {
  const AIDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nexora AI"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.auto_awesome),
              title: const Text("AI Opportunity Recommendations"),
              subtitle: const Text("Find opportunities matched to your profile"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.description),
              title: const Text("AI Essay Feedback"),
              subtitle: const Text("Improve your admission essays"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.article),
              title: const Text("AI Resume Analyzer"),
              subtitle: const Text("Review your CV and resume"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.school),
              title: const Text("University Match"),
              subtitle: const Text("Predict your admission compatibility"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

        ],
      ),
    );
  }
}
