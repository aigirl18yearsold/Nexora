import 'package:flutter/material.dart';

class AIStudyPlannerScreen extends StatelessWidget {
  const AIStudyPlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Study Planner"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: CheckboxListTile(
              value: true,
              onChanged: null,
              title: Text("Complete Mathematics Chapter 5"),
              subtitle: Text("Estimated Time: 2 Hours"),
            ),
          ),

          Card(
            child: CheckboxListTile(
              value: false,
              onChanged: null,
              title: Text("Practice IELTS Writing Task 2"),
              subtitle: Text("Estimated Time: 1 Hour"),
            ),
          ),

          Card(
            child: CheckboxListTile(
              value: false,
              onChanged: null,
              title: Text("Revise Physics Electricity"),
              subtitle: Text("Estimated Time: 90 Minutes"),
            ),
          ),

          Card(
            child: CheckboxListTile(
              value: false,
              onChanged: null,
              title: Text("Read AI Research Paper"),
              subtitle: Text("Estimated Time: 45 Minutes"),
            ),
          ),

        ],
      ),
    );
  }
}
