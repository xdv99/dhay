import 'package:flutter/material.dart';
import '../../widgets/community_widgets/post_widget.dart';
import '../../widgets/dhay_appbar.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            const DhayAppBar(),
            const Text(
              "Community",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            PostWidget(
                avatarLink: "assets/images/avatar.png",
                name: "Ali Ameer",
                dateTime: DateTime.now(),
                content:
                    "Learning programming can be quite the journey, filled with its fair share of triumphs and trials. From deciphering complex syntax to unraveling elusive bugs, every coder knows the struggle all too well.",
                likes: 2),
            const SizedBox(height: 20),
            PostWidget(
                avatarLink: "assets/images/avatar.png",
                name: "Ali Ameer",
                dateTime: DateTime.now(),
                content:
                    "Learning programming can be quite the journey, filled with its fair share of triumphs and trials. From deciphering complex syntax to unraveling elusive bugs, every coder knows the struggle all too well.",
                likes: 2),
            const SizedBox(height: 20),
            PostWidget(
                avatarLink: "assets/images/avatar.png",
                name: "Ali Ameer",
                dateTime: DateTime.now(),
                content:
                    "Learning programming can be quite the journey, filled with its fair share of triumphs and trials. From deciphering complex syntax to unraveling elusive bugs, every coder knows the struggle all too well.Learning programming can be quite the journey, filled with its fair share of triumphs and trials. From deciphering complex syntax to unraveling elusive bugs, every coder knows the struggle all too well.Learning programming can be quite the journey, filled with its fair share of triumphs and trials. From deciphering complex syntax to unraveling elusive bugs, every coder knows the struggle all too well.",
                likes: 2),
          ],
        ),
      ),
    );
  }
}
