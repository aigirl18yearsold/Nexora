import 'package:flutter/material.dart';

class SavedOpportunitiesScreen extends StatelessWidget {
  const SavedOpportunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Saved Opportunities"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("Google Solution Challenge"),
            subtitle: Text("Saved 2 days ago"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("Chevening Scholarship"),
            subtitle: Text("Saved yesterday"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("MIT Summer Research"),
            subtitle: Text("Saved today"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
