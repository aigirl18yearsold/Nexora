import 'package:flutter/material.dart';

class ExpenseTrackerScreen extends StatelessWidget {
  const ExpenseTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.menu_book),
              title: Text("Books"),
              subtitle: Text("৳850"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.directions_bus),
              title: Text("Transportation"),
              subtitle: Text("৳400"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.restaurant),
              title: Text("Food"),
              subtitle: Text("৳650"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Tuition"),
              subtitle: Text("৳2,000"),
            ),
          ),

        ],
      ),
    );
  }
}
