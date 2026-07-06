import 'package:flutter/material.dart';

class AnalyticsDashboardScreen extends StatelessWidget {
  const AnalyticsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analytics Dashboard"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.work),
              title: Text("Total Opportunities"),
              trailing: Text("24"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Applications Received"),
              trailing: Text("1,248"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("Registered Students"),
              trailing: Text("8,431"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: Text("Accepted"),
              trailing: Text("327"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.cancel),
              title: Text("Rejected"),
              trailing: Text("615"),
            ),
          ),

        ],
      ),
    );
  }
}
