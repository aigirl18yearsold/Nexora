import 'package:flutter/material.dart';

class HackathonScreen extends StatelessWidget {
  const HackathonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hackathons"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Google Solution Challenge"),
            subtitle: Text("Worldwide"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.computer),
            title: Text("NASA Space Apps Challenge"),
            subtitle: Text("Global"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Microsoft Imagine Cup"),
            subtitle: Text("International"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
