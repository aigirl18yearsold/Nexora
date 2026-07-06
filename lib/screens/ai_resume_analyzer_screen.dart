import 'package:flutter/material.dart';

class AIResumeAnalyzerScreen extends StatelessWidget {
  const AIResumeAnalyzerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Resume Analyzer"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.upload_file),
              label: const Text("Upload Resume (PDF)"),
            ),

            const SizedBox(height: 25),

            const Card(
              child: ListTile(
                leading: Icon(Icons.score),
                title: Text("Overall Resume Score"),
                trailing: Text("88%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text("Skills"),
                trailing: Text("90%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.description),
                title: Text("Formatting"),
                trailing: Text("85%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.computer),
                title: Text("ATS Compatibility"),
                trailing: Text("92%"),
              ),
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "AI Recommendations",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "• Add measurable achievements.\n"
                  "• Include relevant technical skills.\n"
                  "• Improve section consistency.\n"
                  "• Add links to GitHub and portfolio.",
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
