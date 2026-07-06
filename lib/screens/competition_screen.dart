import 'package:flutter/material.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Competitions"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text("Google Solution Challenge"),
            subtitle: Text("Global"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text("NASA Space Apps Challenge"),
            subtitle: Text("Worldwide"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text("Harvard Global Essay Competition"),
            subtitle: Text("International"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
