import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organization Dashboard"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.work),
              title: Text("Manage Opportunities"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text("Applications"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Analytics"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.verified),
              title: Text("Verify Students"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("Organization Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

        ],
      ),
    );
  }
}
