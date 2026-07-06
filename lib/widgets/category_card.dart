import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final IconData icon;
  final String title;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      child: SizedBox(
        width: 120,
        height: 110,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              size: 35,
            ),

            const SizedBox(height: 10),

            Text(
              title,
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}
