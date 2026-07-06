import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Language"),
      ),
      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.language),
            title: Text("English"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.language),
            title: Text("বাংলা"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.language),
            title: Text("हिन्दी"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.language),
            title: Text("اردو"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.language),
            title: Text("Español"),
          ),

        ],
      ),
    );
  }
}
