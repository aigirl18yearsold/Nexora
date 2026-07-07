import 'package:flutter/material.dart';

class CareerRoadmapScreen extends StatelessWidget {
  const CareerRoadmapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Career Roadmap"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.flag),
              title: Text("Career Goal"),
              subtitle: Text("Become an AI Research Engineer"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text("Complete Flutter Development"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text("Publish a Research Project"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.radio_button_unchecked),
              title: Text("Secure an International Internship"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.trending_up),
              title: Text("Roadmap Progress"),
              trailing: Text("65%"),
            ),
          ),

        ],
      ),
    );
  }
}
