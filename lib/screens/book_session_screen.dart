import 'package:flutter/material.dart';

class BookSessionScreen extends StatelessWidget {
  const BookSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Session"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              decoration: const InputDecoration(
                labelText: "Preferred Date",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: const InputDecoration(
                labelText: "Preferred Time",
              ),
            ),

            const SizedBox(height: 15),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Session Type",
              ),
              items: const [
                DropdownMenuItem(
                  value: "Admission Guidance",
                  child: Text("Admission Guidance"),
                ),
                DropdownMenuItem(
                  value: "Essay Review",
                  child: Text("Essay Review"),
                ),
                DropdownMenuItem(
                  value: "Research Mentoring",
                  child: Text("Research Mentoring"),
                ),
              ],
              onChanged: (value) {},
            ),

            const SizedBox(height: 20),

            TextField(
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: "Describe your goals",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Request Booking"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
