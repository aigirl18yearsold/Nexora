import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  final IconData icon;

  const CategoryScreen({
    super.key,
    required this.category,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 40),
                const SizedBox(width: 12),
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Opportunities",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: Icon(icon),
                title: Text("$category Opportunity"),
                subtitle: const Text(
                  "More opportunities will appear here.",
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),

            const SizedBox(height: 10),

            const Card(
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text("Coming Soon"),
                subtitle: Text(
                  "Nexora will soon connect you with real opportunities.",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
