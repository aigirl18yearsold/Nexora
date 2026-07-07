import 'package:flutter/material.dart';

class ExperimentTrackerScreen extends StatelessWidget {
  const ExperimentTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Experiment Tracker"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.science),
              title: Text("Experiment #1"),
              subtitle: Text("Data Collection Completed"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Experiment #2"),
              subtitle: Text("Model Training in Progress"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: Text("Experiment #3"),
              subtitle: Text("Results Successfully Validated"),
            ),
          ),

        ],
      ),
    );
  }
}
