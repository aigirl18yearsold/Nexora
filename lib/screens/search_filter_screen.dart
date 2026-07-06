import 'package:flutter/material.dart';

class SearchFilterScreen extends StatelessWidget {
  const SearchFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search & Filters"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                hintText: "Search opportunities...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Category",
              ),
              items: const [

                DropdownMenuItem(
                  value: "Scholarships",
                  child: Text("Scholarships"),
                ),

                DropdownMenuItem(
                  value: "Competitions",
                  child: Text("Competitions"),
                ),

                DropdownMenuItem(
                  value: "Hackathons",
                  child: Text("Hackathons"),
                ),

                DropdownMenuItem(
                  value: "Research",
                  child: Text("Research"),
                ),

              ],
              onChanged: (value) {},
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Apply Filters"),
              ),
            )

          ],
        ),
      ),
    );
  }
}
