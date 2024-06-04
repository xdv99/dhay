import 'package:flutter/material.dart';
import '../models/default_colors.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, required this.imageLink, this.width = 50});

  final String imageLink;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: regularPurple),
          borderRadius: BorderRadius.circular(width)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(width),
          child: Image.asset(imageLink)),
    );
  }
}
