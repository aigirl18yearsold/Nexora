import 'package:flutter/material.dart';

class ResumeBuilderScreen extends StatelessWidget {
  const ResumeBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Builder"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          TextField(
            decoration: InputDecoration(
              labelText: "Full Name",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            decoration: InputDecoration(
              labelText: "Education",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "Experience",
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: null,
            child: Text("Generate Resume"),
          ),

        ],
      ),
    );
  }
}
