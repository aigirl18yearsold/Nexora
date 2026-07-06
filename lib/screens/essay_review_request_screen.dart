import 'package:flutter/material.dart';

class EssayReviewRequestScreen extends StatelessWidget {
  const EssayReviewRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Essay Review"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              decoration: const InputDecoration(
                labelText: "Essay Title",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              maxLines: 8,
              decoration: const InputDecoration(
                labelText: "Paste Your Essay",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: const InputDecoration(
                labelText: "Target University",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: const InputDecoration(
                labelText: "Application Program",
              ),
            ),

            const SizedBox(height: 30),

            Card(
              color: Colors.blue.shade50,
              child: const ListTile(
                leading: Icon(Icons.attach_money),
                title: Text("Essay Review Fee"),
                subtitle: Text("\$5 per review"),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit for Review"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
