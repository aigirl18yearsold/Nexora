import 'package:flutter/material.dart';

class SkillsInterestsScreen extends StatelessWidget {
  const SkillsInterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills & Interests"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Select Your Skills",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [

                Chip(label: Text("Artificial Intelligence")),
                Chip(label: Text("Programming")),
                Chip(label: Text("Research")),
                Chip(label: Text("Leadership")),
                Chip(label: Text("Mathematics")),
                Chip(label: Text("Robotics")),
                Chip(label: Text("Physics")),
                Chip(label: Text("Biology")),

              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Career Goal",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: "Describe your future goals...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Save"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
