import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Nexora());
}

class Nexora extends StatelessWidget {
  const Nexora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nexora",

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
