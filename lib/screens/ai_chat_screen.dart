import 'package:flutter/material.dart';

class AIChatScreen extends StatelessWidget {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nexora AI Assistant"),
      ),
      body: Column(
        children: [

          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Hello! I'm Nexora AI. How can I help you today?",
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Find AI research internships.",
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Ask Nexora AI...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
