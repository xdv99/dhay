import 'package:flutter/material.dart';
import '../../models/default_colors.dart';

class CategoryBubble extends StatelessWidget {
  const CategoryBubble(
      {super.key, required this.title, this.isSelected = false});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: isSelected ? lightPurple : Colors.white,
          border: Border.all(color: regularPurple, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child:
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold))),
    );
  }
}
