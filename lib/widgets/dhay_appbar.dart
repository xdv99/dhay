import 'package:flutter/material.dart';
import 'avatar_widget.dart';

class DhayAppBar extends StatelessWidget {
  const DhayAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 100,
        ),
        const AvatarWidget(imageLink: "assets/images/avatar.png")
      ],
    );
  }
}
