import 'package:flutter/material.dart';
import '../../widgets/home_widgets/hero_widget.dart';
import '../../widgets/home_widgets/subjects_home_view.dart';
import '../../widgets/home_widgets/your_dhay_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // Hero
        HeroWidget(),
        // Subjects View
        SubjectsHomeView(),
        SizedBox(height: 20),
        // Your Dhay
        YourDhayWidget(),
        SizedBox(height: 100)
      ],
    );
  }
}
