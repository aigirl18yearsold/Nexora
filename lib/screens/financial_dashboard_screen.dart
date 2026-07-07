import 'package:flutter/material.dart';

class FinancialDashboardScreen extends StatelessWidget {
  const FinancialDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Financial Dashboard"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Total Savings"),
              trailing: Text("৳15,000"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.attach_money),
              title: Text("Monthly Expenses"),
              trailing: Text("৳6,500"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text("Scholarship Funds"),
              trailing: Text("\$12,000"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.show_chart),
              title: Text("Savings Progress"),
              trailing: Text("68%"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.flag),
              title: Text("Funding Gap"),
              trailing: Text("\$8,500"),
            ),
          ),

        ],
      ),
    );
  }
}
