import 'package:flutter/material.dart';

class OpportunityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String organization;
  final String deadline;

  const OpportunityCard({
    super.key,
    required this.icon,
    required this.title,
    required this.organization,
    required this.deadline,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "$organization\nDeadline: $deadline",
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
