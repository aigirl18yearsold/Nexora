import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.person,
                size: 55,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Student Name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text("student@email.com"),

            const SizedBox(height: 25),

            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("Education"),
              subtitle: const Text("Higher Secondary"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.public),
              title: const Text("Country"),
              subtitle: const Text("Bangladesh"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.interests),
              title: const Text("Interests"),
              subtitle: const Text("AI, Engineering, Research"),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text("Edit Profile"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

          ],
        ),
      ),
    );
  }
}
