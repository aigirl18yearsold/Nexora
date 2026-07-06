import 'package:flutter/material.dart';

import 'opportunity_card.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [

        Text(
          "🔥 Trending Opportunities",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 15),

        OpportunityCard(
          icon: Icons.emoji_events,
          title: "Google Solution Challenge",
          organization: "Google Developers",
          deadline: "March 31",
        ),

        OpportunityCard(
          icon: Icons.public,
          title: "Harvard Global Essay Contest",
          organization: "Harvard",
          deadline: "April 12",
        ),

        OpportunityCard(
          icon: Icons.science,
          title: "NASA Space Apps Challenge",
          organization: "NASA",
          deadline: "September 5",
        ),
      ],
    );
  }
}
