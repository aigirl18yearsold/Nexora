import 'package:flutter/material.dart';

class ResearchPapersScreen extends StatelessWidget {
  const ResearchPapersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Research Papers"),
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
              leading: Icon(Icons.article),
              title: Text("AI for Healthcare"),
              subtitle: Text(
                "Machine Learning • 3 Authors",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.science),
              title: Text("Climate Change Prediction"),
              subtitle: Text(
                "Environmental Science",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.biotech),
              title: Text("Cancer Detection using CNN"),
              subtitle: Text(
                "Artificial Intelligence",
              ),
            ),
          ),

        ],
      ),
    );
  }
}
