import 'package:flutter/material.dart';

class FellowshipScreen extends StatelessWidget {
  const FellowshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fellowships"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            leading: Icon(Icons.public),
            title: Text("UN Youth Fellowship"),
            subtitle: Text("Global"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.public),
            title: Text("Obama Foundation Leaders"),
            subtitle: Text("International"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.public),
            title: Text("Yale Young Global Scholars"),
            subtitle: Text("United States"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}
