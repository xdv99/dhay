import 'package:flutter/material.dart';
import '../../models/default_colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Identitiy
            Column(
              children: [
                Image.asset("assets/images/logo.png",
                    width: MediaQuery.of(context).size.width * .5),
                const SizedBox(height: 20),
                Text(
                  "Enlighten your mind with\nknowledge and education"
                      .toUpperCase(),
                  style: const TextStyle(color: regularPurple),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
            // Get Started Button
            ElevatedButton(
                onPressed: () {}, child: Text("Get Started".toUpperCase()))
          ],
        ),
      ),
    );
  }
}
