import 'package:flutter/material.dart';

class PortfolioBuilderScreen extends StatelessWidget {
  const PortfolioBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio Builder"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          TextField(
            decoration: InputDecoration(
              labelText: "Professional Headline",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "About Me",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            decoration: InputDecoration(
              labelText: "GitHub Profile",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            decoration: InputDecoration(
              labelText: "LinkedIn Profile",
            ),
          ),

          SizedBox(height: 12),

          TextField(
            decoration: InputDecoration(
              labelText: "Portfolio Website",
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: null,
            child: Text("Generate Portfolio"),
          ),

        ],
      ),
    );
  }
}
