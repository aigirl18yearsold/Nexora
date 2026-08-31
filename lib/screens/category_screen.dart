import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  final IconData icon;

  const CategoryScreen({
    super.key,
    required this.category,
    required this.icon,
  });

  List<String> get opportunities {
    switch (category) {
      case "Scholarships":
        return [
          "Future Leaders Scholarship",
          "Global Student Scholarship",
          "Women in Technology Scholarship",
        ];

      case "Competitions":
        return [
          "Global Student Competition",
          "International Innovation Challenge",
          "Young Innovators Competition",
        ];

      case "Hackathons":
        return [
          "Global AI Hackathon",
          "International Coding Hackathon",
          "Student Innovation Hackathon",
        ];

      case "Research":
        return [
          "MIT Summer Research",
          "Young Researchers Program",
          "Global Student Research Program",
        ];

      case "Internships":
        return [
          "Technology Internship",
          "Student Business Internship",
          "Software Development Internship",
        ];

      case "Olympiads":
        return [
          "International Mathematics Olympiad",
          "International Physics Olympiad",
          "International Informatics Olympiad",
        ];

      default:
        return [
          "$category Opportunity",
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 42,
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  category,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          Text(
            "${opportunities.length} opportunities",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ...opportunities.map(
            (title) => Card(
              margin: const EdgeInsets.only(
                bottom: 12,
              ),

              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(icon),
                ),

                title: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Text(
                  "$category • Nexora",
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),

                onTap: () {
                  ScaffoldMessenger.of(context)
                    .showSnackBar(
                  SnackBar(
                    content: Text(
                      "$title selected",
                    ),
                  ),
                );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
