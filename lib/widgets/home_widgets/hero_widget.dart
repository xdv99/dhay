import 'package:flutter/material.dart';
import '../../models/default_colors.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Student Jumping
        Image.asset("assets/images/student-jumping.png"),
        // Stack of Books
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/books-stack.png",
                width: MediaQuery.of(context).size.width * .3)),
        // Search Button
        Positioned(
            top: 40,
            left: 25,
            child: IconButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  backgroundColor: const Color(0x338670BD),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              icon: const Icon(
                Icons.search,
                color: regularPurple,
              ),
              onPressed: () {},
            ))
      ],
    );
  }
}
