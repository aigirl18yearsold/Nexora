import 'package:flutter/material.dart';

class ApplicationTrackerScreen extends StatelessWidget {
  const ApplicationTrackerScreen({super.key});

  Color getStatusColor(String status) {
    switch (status) {
      case "Applied":
        return Colors.blue;
      case "Reviewing":
        return Colors.orange;
      case "Accepted":
        return Colors.green;
      case "Rejected":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application Tracker"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          buildApplication(
            "Google Solution Challenge",
            "Applied",
          ),

          buildApplication(
            "MIT Summer Research",
            "Reviewing",
          ),

          buildApplication(
            "Chevening Scholarship",
            "Accepted",
          ),

          buildApplication(
            "Oxford Reach Scholarship",
            "Rejected",
          ),

        ],
      ),
    );
  }

  Widget buildApplication(
    String title,
    String status,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: getStatusColor(status),
          child: const Icon(
            Icons.description,
            color: Colors.white,
          ),
        ),
        title: Text(title),
        subtitle: Text(status),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
