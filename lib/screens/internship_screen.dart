import 'package:flutter/material.dart';

class InternshipScreen extends StatelessWidget {
  const InternshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internships"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.work),
            title: Text("Google STEP Internship"),
            subtitle: Text("United States"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.work),
            title: Text("Microsoft Explore Internship"),
            subtitle: Text("United States"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.work),
            title: Text("UNICEF Internship Programme"),
            subtitle: Text("Global"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
