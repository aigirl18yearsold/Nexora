import 'package:flutter/material.dart';

class AIInterviewScreen extends StatelessWidget {
  const AIInterviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Mock Interview"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Question 1",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Tell me about yourself and why you are interested in this opportunity.",
                ),
              ),
            ),

            const SizedBox(height: 20),

            const TextField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Write your answer here...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit Answer"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
