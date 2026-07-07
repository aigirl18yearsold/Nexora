import 'package:flutter/material.dart';

class AIUniversityRecommendationScreen extends StatelessWidget {
  const AIUniversityRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI University Recommendations"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.auto_awesome),
              title: Text("Massachusetts Institute of Technology"),
              subtitle: Text("Compatibility Score: 96%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.auto_awesome),
              title: Text("Stanford University"),
              subtitle: Text("Compatibility Score: 94%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.auto_awesome),
              title: Text("ETH Zurich"),
              subtitle: Text("Compatibility Score: 91%"),
            ),
          ),

        ],
      ),
    );
  }
}
