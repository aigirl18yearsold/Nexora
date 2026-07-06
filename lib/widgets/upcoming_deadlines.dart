import 'package:flutter/material.dart';

class UpcomingDeadlines extends StatelessWidget {
  const UpcomingDeadlines({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: const [

            Text(
              "📅 Upcoming Deadlines",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("MIT Summer Research"),
              subtitle: Text("2 Days Left"),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Oxford Essay Competition"),
              subtitle: Text("5 Days Left"),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Google Solution Challenge"),
              subtitle: Text("8 Days Left"),
            ),
          ],
        ),
      ),
    );
  }
}
