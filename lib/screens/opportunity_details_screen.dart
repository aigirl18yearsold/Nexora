import 'package:flutter/material.dart';

class OpportunityDetailsScreen extends StatelessWidget {
  const OpportunityDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opportunity Details"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Google Solution Challenge",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Google Developers",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            const Chip(label: Text("Hackathon")),

            const SizedBox(height: 20),

            const Text(
              "Deadline",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const Text("31 March"),

            const SizedBox(height: 20),

            const Text(
              "Eligibility",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const Text(
              "Open to university students worldwide.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Description",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const Text(
              "Build an innovative solution using Google technologies to solve one or more of the United Nations Sustainable Development Goals.",
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Apply Now"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
