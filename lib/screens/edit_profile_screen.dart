import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final _nameController = TextEditingController();
  final _schoolController = TextEditingController();
  final _countryController = TextEditingController();
  final _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Full Name",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: _schoolController,
              decoration: const InputDecoration(
                labelText: "School / College",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: _countryController,
              decoration: const InputDecoration(
                labelText: "Country",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: _bioController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: "Bio",
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Save Changes"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
