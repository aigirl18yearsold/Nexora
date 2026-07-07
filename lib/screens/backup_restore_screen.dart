import 'package:flutter/material.dart';

class BackupRestoreScreen extends StatelessWidget {
  const BackupRestoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Backup & Restore"),
      ),
      body: ListView(
        children: [

          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text("Enable Automatic Backup"),
            secondary: const Icon(Icons.backup),
          ),

          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text("Offline Mode"),
            secondary: const Icon(Icons.offline_pin),
          ),

          ListTile(
            leading: const Icon(Icons.cloud_upload),
            title: const Text("Create Backup"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("Backup"),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.restore),
            title: const Text("Restore Backup"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("Restore"),
            ),
          ),

          const ListTile(
            leading: Icon(Icons.history),
            title: Text("Last Backup"),
            subtitle: Text("No backups available"),
          ),

        ],
      ),
    );
  }
}
