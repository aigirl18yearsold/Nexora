import 'package:flutter/material.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
      ),
      body: Column(
        children: [

          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Hi! Are you still looking for a Flutter developer?",
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Yes! We'd love to have you on our team.",
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
                      hintText: "Type your message...",
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
