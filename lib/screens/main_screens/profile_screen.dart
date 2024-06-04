import 'package:flutter/material.dart';

import '../../widgets/avatar_widget.dart';
import '../../widgets/profile_widgets/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 80),
            // User Data
            const Center(
              child: AvatarWidget(
                imageLink: "assets/images/avatar.png",
                width: 150,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Ali Ameer",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text("@ali_Ameer16",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: const Text("Edit")),
            ),
            const Divider(color: Colors.grey, height: 80),
            // Options
            const ProfileTile(
                icon: Icons.notifications_none, title: "Notifications"),
            const ProfileTile(
                icon: Icons.bookmark_border_rounded, title: "Favourite"),
            const ProfileTile(
                icon: Icons.star_outline_rounded, title: "Write a comment"),
            const ProfileTile(
                icon: Icons.arrow_circle_left_outlined, title: "Logout"),
            const ProfileTile(
                icon: Icons.phone_in_talk_outlined, title: "Contact us"),
          ],
        ),
      ),
    );
  }
}
