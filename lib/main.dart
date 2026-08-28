import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAyv4UOfqCUsFFDCA5Uj2sdCQQrz40euVg',
      authDomain: 'nexora-c5988.firebaseapp.com',
      projectId: 'nexora-c5988',
      storageBucket: 'nexora-c5988.firebasestorage.app',
      messagingSenderId: '563694175364',
      appId: '1:563694175364:web:d277689d418d1422616ed1',
      measurementId: 'G-TR142RBBS2',
    ),
  );

  runApp(const Nexora());
}

class Nexora extends StatelessWidget {
  const Nexora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
