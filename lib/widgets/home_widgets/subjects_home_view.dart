import 'package:flutter/material.dart';

import '../../models/default_colors.dart';

class SubjectsHomeView extends StatelessWidget {
  const SubjectsHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Heading
                Text(
                  "Subjects",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                // Description
                Text("Recommendations for you",
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 10)
              ],
            )),
        // Cards
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 20),
              // Programming
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "subject"),
                child: const SubjectCard(
                  title: "Programming",
                  icon: Icons.code,
                  color: pink,
                ),
              ),
              const SizedBox(width: 20),
              // Maths
              const SubjectCard(
                title: "Mathmateics",
                icon: Icons.percent,
                color: lightGreen,
              ),
              const SizedBox(width: 20),
              // Maths
              const SubjectCard(
                title: "Medicine",
                icon: Icons.monitor_heart_outlined,
                color: Color(0xffAD9BD4),
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}

class SubjectCard extends StatelessWidget {
  const SubjectCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                size: 28,
                color: Colors.white,
              ),
              // More Button
              GestureDetector(
                child: const Text(":",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
              )
            ],
          ),

          // Heading
          Text(title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white))
        ],
      ),
    );
  }
}
