import 'package:flutter/material.dart';

class SavedOpportunitiesPreview extends StatelessWidget {
  const SavedOpportunitiesPreview({super.key});

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
              "❤️ Saved Opportunities",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Cambridge Summer School"),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("UNICEF Innovation Challenge"),
            ),

          ],
        ),
      ),
    );
  }
}
