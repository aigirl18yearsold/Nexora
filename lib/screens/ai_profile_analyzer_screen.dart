import 'package:flutter/material.dart';

class AIProfileAnalyzerScreen extends StatelessWidget {
  const AIProfileAnalyzerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Profile Analyzer"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile Completion"),
                trailing: Text("94%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text("Competitiveness Score"),
                trailing: Text("88%"),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Strengths",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "• Strong academic profile\n"
                  "• Active extracurricular activities\n"
                  "• Leadership experience",
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Recommendations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "• Add research experience\n"
                  "• Earn more certifications\n"
                  "• Improve English proficiency\n"
                  "• Participate in international competitions",
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
