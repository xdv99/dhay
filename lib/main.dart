import 'package:flutter/material.dart';
import 'models/theme.dart';
import 'screens/auth_screens/get_started_screen.dart';
import 'screens/auth_screens/login_screen.dart';
import 'screens/auth_screens/splash_screen.dart';
import 'screens/main_screen.dart';
import 'screens/subject_screens/subject_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dhay",
      // Theme Data
      theme: appTheme,
      // Routing
      initialRoute: "main",
      routes: {
        "splash": (context) => const SplashScreen(),
        "get_started": (context) => const GetStartedScreen(),
        "login": (context) => const LoginScreen(),
        "main": (context) => const MainScreen(),
        "subject": (context) => const SubjectScreen(),
      },
    );
  }
}
