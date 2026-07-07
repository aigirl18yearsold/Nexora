import 'package:flutter/material.dart';

class CitationManagerScreen extends StatelessWidget {
  const CitationManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Citation Manager"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text("Deep Learning"),
              subtitle: Text("Goodfellow et al. • APA"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.article),
              title: Text("Attention Is All You Need"),
              subtitle: Text("Vaswani et al. • IEEE"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.science),
              title: Text("Nature Research Article"),
              subtitle: Text("Harvard Style"),
            ),
          ),

        ],
      ),
    );
  }
}
