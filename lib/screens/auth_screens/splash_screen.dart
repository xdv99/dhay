import 'package:flutter/material.dart';
import '../../models/default_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: regularPurple,
      body: Center(
        child: Image.asset(
          "assets/images/logo-white.png",
          width: MediaQuery.of(context).size.width * .6,
        ),
      ),
    );
  }
}
