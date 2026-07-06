import 'package:flutter/material.dart';

class MentorReviewsScreen extends StatelessWidget {
  const MentorReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentor Reviews"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Aisha Rahman"),
              subtitle: Text(
                "⭐⭐⭐⭐⭐\nThe mentor provided detailed feedback on my scholarship essay.",
              ),
            ),
          ),

          SizedBox(height: 10),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("John Smith"),
              subtitle: Text(
                "⭐⭐⭐⭐⭐\nExcellent admission guidance. Highly recommended!",
              ),
            ),
          ),

          SizedBox(height: 10),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Fatima Noor"),
              subtitle: Text(
                "⭐⭐⭐⭐\nVery helpful session with clear advice.",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
