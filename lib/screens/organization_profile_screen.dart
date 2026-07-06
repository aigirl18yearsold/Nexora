import 'package:flutter/material.dart';

class OrganizationProfileScreen extends StatelessWidget {
  const OrganizationProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organization Profile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          CircleAvatar(
            radius: 45,
            child: Icon(Icons.business, size: 45),
          ),

          SizedBox(height: 16),

          Center(
            child: Text(
              "OpenAI Research",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 8),

          Center(
            child: Text("Verified Organization"),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text("Website"),
              subtitle: Text("https://openai.com"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.work),
              title: Text("Active Opportunities"),
              trailing: Text("12"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("Followers"),
              trailing: Text("8,240"),
            ),
          ),

          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "OpenAI Research supports AI innovation through internships, research programs, and educational initiatives.",
              ),
            ),
          ),

        ],
      ),
    );
  }
}
