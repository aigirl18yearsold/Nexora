import 'package:flutter/material.dart';

class AIEssayAnalyzerScreen extends StatelessWidget {
  const AIEssayAnalyzerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Essay Analyzer"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              maxLines: 10,
              decoration: const InputDecoration(
                labelText: "Paste Your Essay",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Analyze Essay"),
              ),
            ),

            const SizedBox(height: 30),

            const Card(
              child: ListTile(
                leading: Icon(Icons.grade),
                title: Text("Overall Score"),
                trailing: Text("91%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.check_circle),
                title: Text("Grammar"),
                trailing: Text("95%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.lightbulb),
                title: Text("Clarity"),
                trailing: Text("89%"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.account_tree),
                title: Text("Structure"),
                trailing: Text("90%"),
              ),
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "AI Suggestions",
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
                  "• Add a stronger opening.\n"
                  "• Include more personal experiences.\n"
                  "• Strengthen your conclusion.\n"
                  "• Reduce repetitive wording.",
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
