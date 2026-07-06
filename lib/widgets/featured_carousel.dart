import 'package:flutter/material.dart';

class FeaturedCarousel extends StatelessWidget {
  const FeaturedCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          _buildCard(
            Colors.blue,
            "Scholarships",
            "Explore fully funded scholarships worldwide.",
          ),

          _buildCard(
            Colors.deepPurple,
            "Hackathons",
            "Build projects and win exciting prizes.",
          ),

          _buildCard(
            Colors.green,
            "Research",
            "Discover global research opportunities.",
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color color, String title, String subtitle) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
