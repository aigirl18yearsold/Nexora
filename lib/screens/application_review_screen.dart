import 'package:flutter/material.dart';

class ApplicationReviewScreen extends StatelessWidget {
  const ApplicationReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Review"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Shaila Khatun"),
              subtitle: const Text("MIT Summer Research Program"),
              trailing: PopupMenuButton<String>(
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: "approve",
                    child: Text("Approve"),
                  ),
                  PopupMenuItem(
                    value: "reject",
                    child: Text("Reject"),
                  ),
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Alex Johnson"),
              subtitle: const Text("Global AI Scholarship"),
              trailing: PopupMenuButton<String>(
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: "approve",
                    child: Text("Approve"),
                  ),
                  PopupMenuItem(
                    value: "reject",
                    child: Text("Reject"),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
