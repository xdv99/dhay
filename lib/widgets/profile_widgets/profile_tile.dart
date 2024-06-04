import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title,
          style: const TextStyle(fontFamily: "Poppins", fontSize: 18)),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}
