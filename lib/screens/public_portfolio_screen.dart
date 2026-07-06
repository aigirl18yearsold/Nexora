import 'package:flutter/material.dart';

class PublicPortfolioScreen extends StatelessWidget {
  const PublicPortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Public Portfolio"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 45,
              child: Icon(
                Icons.person,
                size: 45,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Student Name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Future Engineer | Research Enthusiast",
            ),

            const SizedBox(height: 25),

            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text("Education"),
                subtitle: const Text("Higher Secondary"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.star),
                title: const Text("Skills"),
                subtitle: const Text("Flutter, AI, Leadership"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text("Achievements"),
                subtitle: const Text("Hackathons, Scholarships, Research"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
