import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Opportunities"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          TextField(
            decoration: InputDecoration(
              hintText: "Search opportunities...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Browse by Category",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [

              Chip(label: Text("Scholarships")),
              Chip(label: Text("Competitions")),
              Chip(label: Text("Hackathons")),
              Chip(label: Text("Research")),
              Chip(label: Text("Internships")),
              Chip(label: Text("Olympiads")),
              Chip(label: Text("Fellowships")),
              Chip(label: Text("Conferences")),

            ],
          ),

          const SizedBox(height: 30),

          const Text(
            "Latest Opportunities",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Oxford Reach Scholarship"),
              subtitle: Text("United Kingdom"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.science),
              title: Text("CERN Summer Student Programme"),
              subtitle: Text("Switzerland"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.public),
              title: Text("UN Youth Fellowship"),
              subtitle: Text("Global"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

        ],
      ),
    );
  }
}
