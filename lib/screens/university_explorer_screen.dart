import 'package:flutter/material.dart';

class UniversityExplorerScreen extends StatelessWidget {
  const UniversityExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("University Explorer"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Massachusetts Institute of Technology"),
              subtitle: Text("United States"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Stanford University"),
              subtitle: Text("United States"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("University of Oxford"),
              subtitle: Text("United Kingdom"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("University of Cambridge"),
              subtitle: Text("United Kingdom"),
            ),
          ),

        ],
      ),
    );
  }
}
