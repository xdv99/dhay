import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../models/default_colors.dart';
import '../../widgets/auth_widgets/social_login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .8,
            child: Center(
              // Main Content
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Welcome
                      Text(
                        "welcome!",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 50),
                      // Username
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "username",
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Password
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "password",
                        ),
                      ),
                      const SizedBox(height: 40),
                      // Register
                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: "Don't have an account yet? Register "),
                        TextSpan(
                            style: const TextStyle(color: pink),
                            text: "here",
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ])),
                      const SizedBox(height: 40),
                      // Next Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("NEXT")),
                      )
                    ]),
              ),
            ),
          ),
          // Social Media Login
          const SocialLoginWidget()
        ],
      ),
    );
  }
}
