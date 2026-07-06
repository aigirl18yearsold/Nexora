import 'package:flutter/material.dart';

class StudentVerificationScreen extends StatelessWidget {
  const StudentVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Verification"),
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
              subtitle: const Text("Adarsha Degree College"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Verify"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Alex Johnson"),
              subtitle: const Text("Stanford University"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Verify"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text("Fatima Noor"),
              subtitle: const Text("University of Dhaka"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Verify"),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
