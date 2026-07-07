import 'package:flutter/material.dart';

class EducationLoanCalculatorScreen extends StatelessWidget {
  const EducationLoanCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education Loan Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Loan Amount",
              ),
            ),

            const SizedBox(height: 16),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Interest Rate (%)",
              ),
            ),

            const SizedBox(height: 16),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Repayment Years",
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Calculate"),
            ),

            const SizedBox(height: 24),

            Card(
              child: ListTile(
                leading: Icon(Icons.calculate),
                title: Text("Estimated Monthly Payment"),
                subtitle: Text("৳0.00"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
