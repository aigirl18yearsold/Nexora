import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatelessWidget {
  const CurrencyConverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
            ),

            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(
                  value: "BDT",
                  child: Text("Bangladeshi Taka"),
                ),
                DropdownMenuItem(
                  value: "USD",
                  child: Text("US Dollar"),
                ),
                DropdownMenuItem(
                  value: "EUR",
                  child: Text("Euro"),
                ),
                DropdownMenuItem(
                  value: "GBP",
                  child: Text("British Pound"),
                ),
              ],
              onChanged: (_) {},
              decoration: const InputDecoration(
                labelText: "Convert To",
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Convert"),
            ),

            const SizedBox(height: 24),

            Card(
              child: ListTile(
                leading: Icon(Icons.currency_exchange),
                title: Text("Converted Amount"),
                subtitle: Text("0.00"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
