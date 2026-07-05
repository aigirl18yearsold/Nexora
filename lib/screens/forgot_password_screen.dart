import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState
    extends State<ForgotPasswordScreen> {

  final TextEditingController emailController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height:40),

            const Icon(
              Icons.lock_reset,
              size:90,
            ),

            const SizedBox(height:20),

            const Text(
              "Reset Password",
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height:10),

            const Text(
              "Enter your email address and we'll send you a reset link.",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height:30),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(height:30),

            SizedBox(
              width: double.infinity,
              height:55,
              child: ElevatedButton(
                onPressed: () {
                  // Firebase reset password later
                },
                child: const Text(
                  "Send Reset Link",
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
