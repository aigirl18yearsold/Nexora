import 'package:flutter/material.dart';

class InnovationDashboardScreen extends StatelessWidget {
  const InnovationDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Innovation Dashboard"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text("AI Agriculture Assistant"),
              subtitle: Text("Prototype Stage"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.health_and_safety),
              title: Text("Smart Health Monitor"),
              subtitle: Text("Research Stage"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.rocket_launch),
              title: Text("Nexora Platform"),
              subtitle: Text("Development Stage"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text("Average Innovation Score"),
              trailing: Text("91/100"),
            ),
          ),

        ],
      ),
    );
  }
}
