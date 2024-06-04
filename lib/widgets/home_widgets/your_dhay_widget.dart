import 'package:flutter/material.dart';
import '../../models/default_colors.dart';

class YourDhayWidget extends StatelessWidget {
  const YourDhayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Heading
            Text(
              "Your Dhay",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            // Description
            Text("Write what you want to remember",
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 10),
            // Notification Card
            Container(
              height: 160,
              decoration: BoxDecoration(
                  color: regularPurple,
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 60, 100, 0),
                    child: Text(
                        "Well done, Ali! Keep studying\nyou do not just wake up and become the butterfly growth is a process",
                        style: TextStyle(color: Colors.white)),
                  ),
                  // Add Button
                  Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                          icon: const Icon(Icons.add),
                          iconSize: 32,
                          color: Colors.white,
                          onPressed: () {})),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/cat-book.png",
                        width: 80,
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
