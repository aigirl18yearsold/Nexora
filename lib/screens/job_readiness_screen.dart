import 'package:flutter/material.dart';

class JobReadinessScreen extends StatelessWidget {
  const JobReadinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job Readiness"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.emoji_events),
              title: Text("Overall Readiness"),
              trailing: Text("82%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.description),
              title: Text("Resume Score"),
              trailing: Text("80%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text("Interview Score"),
              trailing: Text("78%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.code),
              title: Text("Technical Skills"),
              trailing: Text("86%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.chat),
              title: Text("Communication"),
              trailing: Text("84%"),
            ),
          ),

        ],
      ),
    );
  }
}
