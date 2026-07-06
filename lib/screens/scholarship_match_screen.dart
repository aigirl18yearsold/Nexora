import 'package:flutter/material.dart';

class ScholarshipMatchScreen extends StatelessWidget {
  const ScholarshipMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scholarship Match"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Chevening Scholarship"),
              subtitle: Text("Match Score: 95%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("Knight-Hennessy Scholars"),
              subtitle: Text("Match Score: 89%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text("DAAD Scholarship"),
              subtitle: Text("Match Score: 92%"),
            ),
          ),

          Card(
            child:
