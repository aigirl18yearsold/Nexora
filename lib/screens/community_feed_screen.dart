import 'package:flutter/material.dart';

class CommunityFeedScreen extends StatelessWidget {
  const CommunityFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community Feed"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Shaila Khatun"),
              subtitle: Text(
                "Looking for teammates for an AI healthcare hackathon.",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Alex Chen"),
              subtitle: Text(
                "Sharing resources for MIT application essays.",
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Fatima Noor"),
              subtitle: Text(
                "Anyone interested in forming a robotics research group?",
              ),
            ),
          ),

        ],
      ),
    );
  }
}
