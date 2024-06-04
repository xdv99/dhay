import 'package:flutter/material.dart';

class SubjectBookWidget extends StatelessWidget {
  const SubjectBookWidget(
      {super.key,
      required this.title,
      required this.author,
      required this.color});

  final String title;
  final String author;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
          width: double.infinity,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: const TextStyle(color: Colors.white)),
              Text(author,
                  style: const TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ),
        const Positioned(
            top: 10,
            right: 10,
            child: Icon(Icons.more_vert, color: Colors.white))
      ],
    );
  }
}
