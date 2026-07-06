import 'package:flutter/material.dart';

class TeamFinderScreen extends StatelessWidget {
  const TeamFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team Finder"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.groups),
              ),
              title: const Text("AI Healthcare Team"),
              subtitle: const Text(
                "Looking for Flutter & ML developers\n3/5 Members",
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Join"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.groups),
              ),
              title: const Text("Climate Research"),
              subtitle: const Text(
                "Need Data Scientist\n2/4 Members",
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Join"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.groups),
              ),
              title: const Text("NASA Space Apps"),
              subtitle: const Text(
                "Seeking UI/UX Designer\n4/6 Members",
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text("Join"),
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
