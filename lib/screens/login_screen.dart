      import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;
  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> login() async {
    if (isLoading) return;

    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty) {
      showMessage("Please enter your email.");
      return;
    }

    if (password.isEmpty) {
      showMessage("Please enter your password.");
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (!mounted) return;

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;

      String message;

      switch (e.code) {
        case 'invalid-email':
          message = "Please enter a valid email address.";
          break;
        case 'user-not-found':
          message = "No account exists with this email.";
          break;
        case 'wrong-password':
        case 'invalid-credential':
          message = "Incorrect email or password.";
          break;
        case 'user-disabled':
          message = "This account has been disabled.";
          break;
        case 'too-many-requests':
          message = "Too many attempts. Please try again later.";
          break;
        case 'network-request-failed':
          message = "Network error. Check your internet connection.";
          break;
        default:
          message = "Login failed: ${e.message ?? e.code}";
      }

      showMessage(message);
    } catch (e) {
      if (!mounted) return;
      showMessage("Login failed: $e");
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
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),

                const Icon(
                  Icons.school,
                  size: 90,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Welcome to Nexora",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Login to continue",
                  style: TextStyle(fontSize: 18),
                ),

                const SizedBox(height: 40),

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
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
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
                    onPressed: isLoading ? null : login,
                    child: isLoading
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(),
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(fontSize: 18),
                          ),
                  ),
                ),

                const SizedBox(height: 15),

                TextButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                  child: const Text("Create New Account"),
                ),

                TextButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          showMessage(
                            "Password reset will be added next.",
                          );
                        },
                  child: const Text("Forgot Password?"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
      
                
