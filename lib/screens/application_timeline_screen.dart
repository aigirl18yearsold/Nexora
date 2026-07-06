import 'package:flutter/material.dart';

class ApplicationTimelineScreen extends StatelessWidget {
  const ApplicationTimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Timeline"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.bookmark_added),
            ),
            title: Text("Opportunity Saved"),
            subtitle: Text("Google Solution Challenge"),
          ),

          Divider(),

          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.description),
            ),
            title: Text("Application Submitted"),
            subtitle: Text("MIT Summer Research"),
          ),

          Divider(),

          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.hourglass_top),
            ),
            title: Text("Application Under Review"),
            subtitle: Text("Chevening Scholarship"),
          ),

          Divider(),

          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.check_circle),
            ),
            title: Text("Application Accepted"),
            subtitle: Text("NASA Space Apps Challenge"),
          ),
        ],
      ),
    );
  }
}
