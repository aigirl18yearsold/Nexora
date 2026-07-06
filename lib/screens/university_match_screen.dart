import 'package:flutter/material.dart';

class UniversityMatchScreen extends StatelessWidget {
  const UniversityMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("University Match"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Massachusetts Institute of Technology"),
              subtitle: Text("Match Score: 91%\nAdmission Chance: Reach"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Stanford University"),
              subtitle: Text("Match Score: 87%\nAdmission Chance: Reach"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("University of Toronto"),
              subtitle: Text("Match Score: 95%\nAdmission Chance: Target"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("University of Melbourne"),
              subtitle: Text("Match Score: 93%\nAdmission Chance: Target"),
            ),
          ),

        ],
      ),
    );
  }
}
