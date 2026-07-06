import 'package:flutter/material.dart';

class ApplicationStatisticsScreen extends StatelessWidget {
  const ApplicationStatisticsScreen({super.key});

  Widget statCard(
      String title,
      String value,
      IconData icon,
      Color color,
      ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Icon(
              icon,
              size: 40,
              color: color,
            ),

            const SizedBox(height: 10),

            Text(
              value,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(title),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Statistics"),
      ),

      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: [

          statCard(
            "Applied",
            "12",
            Icons.send,
            Colors.blue,
          ),

          statCard(
            "Accepted",
            "4",
            Icons.check_circle,
            Colors.green,
          ),

          statCard(
            "Reviewing",
            "3",
            Icons.hourglass_top,
            Colors.orange,
          ),

          statCard(
            "Rejected",
            "2",
            Icons.cancel,
            Colors.red,
          ),

        ],
      ),
    );
  }
}
