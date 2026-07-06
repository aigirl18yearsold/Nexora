import 'package:flutter/material.dart';

class ProfileCompletionCard extends StatelessWidget {
  final double progress;

  const ProfileCompletionCard({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Profile Completion",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            LinearProgressIndicator(
              value: progress,
              minHeight: 10,
            ),

            const SizedBox(height: 12),

            Text(
              "${(progress * 100).toInt()}% Complete",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Complete your profile to receive better opportunity recommendations.",
            ),
          ],
        ),
      ),
    );
  }
}
