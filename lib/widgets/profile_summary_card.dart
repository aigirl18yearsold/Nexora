import 'package:flutter/material.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const CircleAvatar(
          radius: 28,
          child: Icon(Icons.person),
        ),
        title: const Text(
          "Welcome, Student!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "Complete your profile to receive personalized opportunities.",
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text("View"),
        ),
      ),
    );
  }
}
