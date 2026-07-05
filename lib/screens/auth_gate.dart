import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  // This will later check Firebase authentication.
  final bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return const HomeScreen();
    }

    return const LoginScreen();
  }
}
