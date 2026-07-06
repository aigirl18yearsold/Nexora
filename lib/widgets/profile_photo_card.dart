import 'package:flutter/material.dart';

class ProfilePhotoCard extends StatelessWidget {
  const ProfilePhotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera),
              label: const Text("Upload Profile Photo"),
            ),

            const SizedBox(height: 10),

            const Text(
              "Supported formats: JPG, PNG",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
