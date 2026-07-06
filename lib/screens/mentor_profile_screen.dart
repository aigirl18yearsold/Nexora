import 'package:flutter/material.dart';

class MentorProfileScreen extends StatelessWidget {
  const MentorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentor Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: CircleAvatar(
                radius: 55,
                child: Icon(
                  Icons.person,
                  size: 55,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Dr. Sarah Johnson",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Center(
              child: Text(
                "MIT • AI Research Mentor",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "About",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Helping students with research opportunities, university admissions, scholarships, and AI projects.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Expertise",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Wrap(
              spacing: 10,
              children: const [
                Chip(label: Text("AI")),
                Chip(label: Text("Research")),
                Chip(label: Text("MIT Admissions")),
                Chip(label: Text("Scholarships")),
              ],
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Book Session"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
