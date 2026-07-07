import 'package:flutter/material.dart';

class SkillAssessmentScreen extends StatelessWidget {
  const SkillAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skill Assessment"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.code),
              title: const Text("Flutter Development"),
              subtitle: const Text("Intermediate"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.psychology),
              title: const Text("Artificial Intelligence"),
              subtitle: const Text("Begin Assessment"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.language),
              title: const Text("English Communication"),
              subtitle: const Text("Advanced"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text("Data Science"),
              subtitle: const Text("Begin Assessment"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

        ],
      ),
    );
  }
}
