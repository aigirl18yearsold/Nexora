import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool hidePassword = true;
  bool hideConfirmPassword = true;
  bool isLoading = false;

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> createAccount() async {
    final fullName = fullNameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (fullName.isEmpty) {
      showMessage("Please enter your full name.");
      return;
    }

    if (email.isEmpty) {
      showMessage("Please enter your email.");
      return;
    }

    if (password.isEmpty) {
      showMessage("Please enter a password.");
      return;
    }

    if (password.length < 6) {
      showMessage("Password must be at least 6 characters.");
      return;
    }

    if (password != confirmPassword) {
      showMessage("Passwords do not match.");
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await credential.user?.updateDisplayName(fullName);

      if (!mounted) return;

      showMessage("Account created successfully!");

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      String message;

      switch (e.code) {
        case 'email-already-in-use':
          message = "An account already exists with this email.";
          break;
        case 'invalid-email':
          message = "Please enter a valid email address.";
          break;
        case 'weak-password':
          message = "Your password is too weak.";
          break;
        case 'operation-not-allowed':
          message = "Email/password sign-in is not enabled in Firebase.";
          break;
        case 'network-request-failed':
          message = "Network error. Please check your internet connection.";
          break;
        default:
          message = e.message ?? "Could not create the account.";
      }

      showMessage(message);
    } catch (e) {
      showMessage("Something went wrong. Please try again.");
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  void showMessage(String message) {
    if (!mounted) return;

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 4),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              const Icon(
                Icons.person_add_alt_1,
                size: 90,
              ),

              const SizedBox(height: 20),

              const Text(
                "Join Nexora",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Create your account to discover opportunities.",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              TextField(
                controller: fullNameController,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      hidePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: confirmPasswordController,
                obscureText: hideConfirmPassword,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      hideConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        hideConfirmPassword = !hideConfirmPassword;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: isLoading ? null : createAccount,
                  child: isLoading
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(),
                        )
                      : const Text(
                          "Create Account",
                          style: TextStyle(fontSize: 18),
                        ),
                ),
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: isLoading
                    ? null
                    : () {
                        Navigator.pop(context);
                      },
                child: const Text(
                  "Already have an account? Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
