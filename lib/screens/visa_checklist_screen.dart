import 'package:flutter/material.dart';

class VisaChecklistScreen extends StatelessWidget {
  const VisaChecklistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visa Checklist"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          CheckboxListTile(
            value: true,
            onChanged: null,
            title: Text("Passport Ready"),
          ),

          CheckboxListTile(
            value: true,
            onChanged: null,
            title: Text("Admission Letter Received"),
          ),

          CheckboxListTile(
            value: false,
            onChanged: null,
            title: Text("Financial Documents Prepared"),
          ),

          CheckboxListTile(
            value: false,
            onChanged: null,
            title: Text("Visa Interview Scheduled"),
          ),

          CheckboxListTile(
            value: false,
            onChanged: null,
            title: Text("Visa Approved"),
          ),

        ],
      ),
    );
  }
}
