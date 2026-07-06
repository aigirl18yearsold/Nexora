import 'package:flutter/material.dart';

class MentorMarketplaceScreen extends StatelessWidget {
  const MentorMarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentor Marketplace"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Dr. Sarah Johnson"),
              subtitle: const Text(
                "MIT • AI Research • ⭐ 4.9 (128 Reviews)",
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Prof. David Lee"),
              subtitle: const Text(
                "Oxford • Scholarships • ⭐ 4.8 (94 Reviews)",
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Emily Chen"),
              subtitle: const Text(
                "Google SWE • Career Mentor • ⭐ 5.0 (76 Reviews)",
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),

        ],
      ),
    );
  }
}
