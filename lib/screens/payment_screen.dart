import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Card(
              child: ListTile(
                leading: Icon(Icons.description),
                title: Text("Essay Review"),
                subtitle: Text("Professional feedback within 72 hours"),
                trailing: Text(
                  "\$5",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Choose Payment Method",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text("Credit / Debit Card"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text("PayPal"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text("Google Pay"),
              onTap: () {},
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Proceed to Payment"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
