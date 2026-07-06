import 'package:flutter/material.dart';

class NavigationService {

  static Future<dynamic> navigateTo(
    BuildContext context,
    Widget page,
  ) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => page,
      ),
    );
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
