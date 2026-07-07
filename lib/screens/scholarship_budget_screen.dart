import 'package:flutter/material.dart';

class ScholarshipBudgetScreen extends StatelessWidget {
  const ScholarshipBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scholarship Budget"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Available Scholarship"),
              trailing: Text("\$12,000"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.payments),
              title: Text("Tuition Paid"),
              trailing: Text("\$5,000"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Housing"),
              trailing: Text("\$2,000"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.savings),
              title: Text("Remaining Balance"),
              trailing: Text("\$5,000"),
            ),
          ),

        ],
      ),
    );
  }
}
