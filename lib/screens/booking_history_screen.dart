import 'package:flutter/material.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking History"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.event_available),
              title: Text("Research Mentoring Session"),
              subtitle: Text("Completed • June 18, 2026"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.description),
              title: Text("Essay Review"),
              subtitle: Text("Completed • June 25, 2026"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Admission Consultation"),
              subtitle: Text("Upcoming • July 15, 2026"),
            ),
          ),

        ],
      ),
    );
  }
}
