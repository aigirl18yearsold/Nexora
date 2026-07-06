import 'package:flutter/material.dart';

class BookmarkManagerScreen extends StatelessWidget {
  const BookmarkManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmarks"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.bookmark, color: Colors.blue),
              title: const Text("Google Solution Challenge"),
              subtitle: const Text("Hackathon"),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () {},
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.bookmark, color: Colors.green),
              title: const Text("Chevening Scholarship"),
              subtitle: const Text("Scholarship"),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () {},
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.bookmark, color: Colors.orange),
              title: const Text("CERN Summer Student Programme"),
              subtitle: const Text("Research"),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
